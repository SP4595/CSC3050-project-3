#include "simulator.h"
#include <iostream>

/**
 * Simulator Data
 * 
 * uint32_t pc;
 * uint32_t reg[32];
 * uint32_t stack_base;
 * uint32_t max_stack_size;
 * MemoryManager* memory;
*/

/**
 * summary
 * 
 * - 1. bool is basic signal, uint32_t for multi value
 * 
 * - 2. sign extension by default
 * 
 * - 2. imm must be uint32_t originally and change to int32_t after extention!!!!!!!!!!!!!
*/

/************ basic module simulators **************/


/*
  LUI =    0b00110111,
  AUIPC =  0b00010111,
  JAL =    0b01101111,
  JALR =   0b01100111, 
  B_type = 0b01100011,
  Load =   0b00000011,
  Save =   0b01000011,
  Imms =   0b00010011,
  Regs =   0b00110011,
  ECALL =  0b01110011,
  ERROR =  0b11111111,
  */
int32_t imm_constructor(uint32_t inst) {
  /**
   * imm: 12 / 20
   * imm_type: 0 for 12, 20
   * imm field must not be unorderd ()
  */
  uint32_t opcode = inst & 0x7F;
  if (opcode == 0b00010111) { // auipc
    return inst & 0xFFFFF000;

  } else if (opcode == 0b00110111) { // lui
    return inst & 0xFFFFF000;

  } else if (opcode == 0b01101111) { // jal
    // autometically shift left once !
    int32_t imm = ((inst >> 31) & 0x1) << 20 | // imm[20] -> 31
                  ((inst >> 12) & 0xFF) << 12 | // imm[19:12]
                  ((inst >> 20) & 0x1) << 11 | // imm[11]
                  ((inst >> 21) & 0x3FF) << 1;  // imm[10:1] 
    // imm[0] must be 0 as shifting!
    imm = (imm << 11) >> 11;
    return imm;

  } else if (opcode == 0b00000011 || opcode == 0b00010011 || opcode == 0b01100111) { // load / imm-operation / jalr
    int32_t signed_buffer = (inst >> 20) & 0xFFF; // get top 12 bit to lsb
    return (signed_buffer << 20) >> 20;

  } else if (opcode == 0b0100011) { // save
    uint32_t imm_4to0 = (inst >> 7) & 0x1F; // get 4 ~ 0
    uint32_t imm_11to5 = (inst >> 20) & 0xFE0; // get 11 ~ 5;
    int32_t signed_buffer =  imm_4to0 + imm_11to5;
    return (signed_buffer << 20) >> 20;

  } else if (opcode == 0b01100011) { // branch
    int32_t imm = ((inst >> 31) & 0x1) << 12 | // imm[12]
                  ((inst >> 7) & 0x1) << 11 | // imm[11]
                  ((inst >> 25) & 0x3F) << 5 | // imm[10:5]
                  ((inst >> 8) & 0xF) << 1; // imm[4:1]
    // imm[0] autometically to be zero as shifting
    imm = (imm << 19 ) >> 19; // sign extend
    return imm;

  } else {
    return -1; // error code
  }
}



int32_t ALU(int32_t op1, int32_t op2, ALUop ALUopcode) { // caution: op1, op2 are signed by default!! 
  /**
   * opcode 
   * // Arithmetic
   * ADD = 0,
   * SUB = 1,
   * // Logict
   * AND = 2,
   * OR = 3,
   * XOR = 4,
   * // shifting
   * SLL = 5,
   * SRL = 6,
   * SRA = 7,
   * // slt
   * SLT = 8, // rd = (rs1 < rs2)
   * SLTU = 9,
   * // NOP
   * NOP = -1, // should not exit 
  */
  switch (ALUopcode) {
    case ADDop:
      return op1 + op2;
    case SUBop:
      return op1 - op2;
    case ANDop:
      return op1 & op2;
    case ORop:
      return op1 | op2;
    case XORop:
      return op1 ^ op2;
    case SLLop:
      return op1 << op2;
    case SRLop:
      return static_cast<uint32_t>(op1) >> static_cast<uint32_t>(op2);
    case SRAop:
      return op1 >> op2;
    case SLTop:
      return op1 < op2; 
    case SLTUop:
      return static_cast<uint32_t>(op1) < static_cast<uint32_t>(op2);
    default:
      //std::cout << "ERROR: INVALID ALUOP" << std::endl;
      return 0;
  }
}

bool branch_controler(int32_t rs1_v, int32_t rs2_v, Instruction inst) {
  switch (inst) {
    case BEQ: {
      /* test op1 == op2 */
      return rs1_v == rs2_v;
    }
    case BNE: {
      /* != */
      return rs1_v != rs2_v;
    }
    case BLT: {
      /* < */
      return rs1_v < rs2_v;
    }
    case BGE: {
      /* >= */
      return rs1_v >= rs2_v;
    }
    case BLTU: {
      /* change data type */
      return static_cast<uint32_t>(rs1_v) < static_cast<uint32_t>(rs2_v);
    }
    case BGEU: {
      /* chage data type */
      return static_cast<uint32_t>(rs1_v) >= static_cast<uint32_t>(rs2_v);
    }
    default: {
      //std::cout << "ERROR: INVALID BRANCH SIGNAL" << std::endl;
    }
  }
}

/********************** simulator start *************************/

// init memory, pc, register
Simulator::Simulator(MemoryManager* memory) {
  this->memory = memory;
  this->pc = 0;
  memset(this->reg, 0, REGNUM * sizeof(uint32_t));
}

Simulator::~Simulator() {}

// init register, init memory (set to 0) according to stack base address and max
// size
void Simulator::init_stack(uint32_t base_addr, uint32_t max_size) {
  /**
   * iteratively add page for stack
  */
  // 1. initialize meta data
  this->stack_base = base_addr;
  this->max_stack_size = max_size;
  this->reg[sp] = base_addr; // initialize stack pointer

  // 2. initilize memory space
  uint32_t ptr = base_addr - max_size; // pointer
  uint32_t final_addr = base_addr; // load what you want
  while (ptr <= final_addr) {
    memory->addPage(ptr);
    ptr += 4096; // next 4kb
  }
  if (!memory->isPageExist(final_addr)) {
    // the while iteration may forget the last page
    memory->addPage(final_addr);
  }

  // 3.check initialize
  // for (uint32_t i = base_addr; i <= base_addr - max_size; i ++) {
  //  if (!memory->is_page_exit(i)) {
  //    //std::cout << "ERROR: STACK INITIALIZE FAULTE" << std::endl;
  //  }
  // }
}

void Simulator::simulate() {

  // initialize pipeline registers
  // all initialize when generated
  
  // insert Bubble to later pipeline stages when fetch the first instruction
  f_reg.bubble = true;  
  d_reg.bubble = true;
  e_reg.bubble = true;
  m_reg.bubble = true;
  // main simulation loop (one cyle)
  while (true) {
    /**
     * bubble/stall generate method:
     * - 1. bubble and stall only valid in x_reg, x_reg_new do not obtain bubbles
     * - 2. bubble: only stop once, can be propogate. used for data hazerd
     * - 3. stall: stop multiple times, can't propogate. used for branch hazerd
    */
    // set $zero to 0, some instruction might set this register to non-zero
    reg[zero] = 0;
    // check stack overflow
    if (reg[sp] >= stack_base + max_stack_size) {
      //std::cout << "ERROR DETECT: STACK OVERFLOW" << std::endl;
      exit(-1);
    }

    this->fetch();
    this->decode();
    this->excecute();
    this->memory_access();
    this->write_back();

    this->history.cycle_count += 1;
    
    // stall count -= 1
    if (f_reg.stall > 0) {
      f_reg.stall -= 1;
      f_reg_new.stall = f_reg.stall;
    }
    if (d_reg.stall > 0) {
      d_reg.stall -= 1;
      d_reg_new.stall = d_reg.stall;
    }
    if (e_reg.stall > 0) {
      e_reg.stall -= 1;
      e_reg_new.stall = e_reg.stall;
    }
    if (m_reg.stall > 0) {
      m_reg.stall -= 1;
      m_reg_new.stall = m_reg.stall;
    }


    
    // copy old register values to new register values （bubble propogation）
    
    f_reg = f_reg_new;
    d_reg = d_reg_new;
    e_reg = e_reg_new;
    m_reg = m_reg_new;

    // reg_new reset
    f_reg_new = FetchRegister();
    d_reg_new = DecodeRegister();
    e_reg_new = ExecuteRegister();
    m_reg_new = MemoryRegister();

    // history handeling
    history.cycle_count += 1;
  }
}

// update pc and f_reg_new
void Simulator::fetch() {
  /**
   * nedd to handle data hazerd and branch hazerd (stop fatching (pc not change + bubble generate))
  */
  uint32_t latency;
  uint32_t inst = memory->getInt(pc, &latency);
  history.cycle_count += latency;
  // write to register
  f_reg_new.inst = inst;
  f_reg_new.len = 32; // instruction lenth
  f_reg_new.pc = pc;

  

  // pc for next iteration
  if (!need_bubble) {
    pc = isjump ? jump_addr : pc + 4; // finally, jump for next iteration, if 
    f_reg_new.bubble = false;
    jump_addr = 0; // clear
    isjump = false; // clear the state after handle it
  } else { 
    // bubble, pc remain！
    isjump = false;
    need_bubble = false; // clear the state after handle it
    f_reg_new.bubble = true; // if bubble, pc remain!
  }

  
  isjump = false;
  f_reg_new.branch_predict = false; // always predict not jump
}

// decode instruction, deal with bubble and stall
// update pipeline register

void Simulator::decode() {
  /*
  LUI =    0b00110111,
  AUIPC =  0b00010111,
  JAL =    0b01101111,
  JALR =   0b01100111, 
  B_type = 0b01100011,
  Load =   0b00000011,
  Save =   0b01000011,
  Imms =   0b00010011,
  Regs =   0b00110011,
  ECALL =  0b01110011,
  ERROR =  0b11111111,
  */
  if(!f_reg.bubble && f_reg.stall == 0) {
    d_reg_new.branch_predict = f_reg.branch_predict; // propogate

    uint32_t inst = f_reg.inst;
    uint32_t pc = f_reg.pc;
    
    uint32_t opcode = inst & 0x7F; // get the last 7 bit
    /**
      bool bubble = false;
      uint32_t stall = 0;

      uint32_t pc = 0;

      uint32_t rs1 = 0, rs2 = 0;
      
      Instruction inst = UNKNOWN;

      bool branch_enable = False;

      ALUop alu = Nop;

      int32_t op1 = 0; // reg[rs1] or pc ?
      int32_t op2 = 0; // reg[rs2] or imm ? 

      uint32_t dest = 0;
      int32_t save_value = 0;
    */
    d_reg_new.branch_enable = false; // initialize
    d_reg_new.read_signed_mem = false;
    d_reg_new.read_unsigned_mem = false;
    d_reg_new.write_mem = false;
    d_reg_new.write_reg = false; // initialize control signal
    d_reg_new.op1_from_rs1 = false;
    d_reg_new.op2_from_rs2 = false;
    switch (opcode) {

      case 0b00110111: {// LUI
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        d_reg_new.alu = ADDop;
        d_reg_new.dest = (inst >> 7) & 0b00011111; // last 5 bits
        d_reg_new.rs1 = zero; // add 0
        d_reg_new.op1 = reg[zero];
        d_reg_new.op2 = imm_constructor(inst);
        d_reg_new.inst = LUI;
        break;
      }
      case 0b00010111: {// AUIPC
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        d_reg_new.alu = ADDop;
        d_reg_new.dest = (inst >> 7) & 0b00011111; // last 5 bits
        d_reg_new.op1 = pc;
        d_reg_new.op2 = imm_constructor(inst);
        d_reg_new.inst = AUIPC;
        break;
      }
      case 0b01101111: {// JAL
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        d_reg_new.alu = ADDop;
        d_reg_new.dest = (inst >> 7) & 0b00011111; // last 5 bits
        d_reg_new.op1 = pc;
        d_reg_new.op2 = imm_constructor(inst); // jal : save pc + 4 to dest, jump to pc + imm
        d_reg_new.inst = JAL;
        break;
      }
      case 0b01100111: {// JALR
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        d_reg_new.alu = ADDop;
        d_reg_new.rs1 = (inst >> 15) & 0b00011111; // last 5 bits
        d_reg_new.dest = (inst >> 7) & 0b00011111; // last 5 bits
        d_reg_new.op1 = reg[d_reg_new.rs1];
        d_reg_new.op1_from_rs1 = true;
        d_reg_new.op2 = imm_constructor(inst); // jal : save pc + 4 to dest, jump to pc + imm
        d_reg_new.inst = JALR;
        break;
      }
      case 0b01100011: {// BRANCHS
        uint32_t func3 = (inst >> 12) & 0b0111; //mask the last 3 bit
        d_reg_new.branch_enable = true;
        d_reg_new.rs1 = (inst >>15) &0b00011111; // mask last 5 bit 
        d_reg_new.rs2 = (inst >> 20) & 0b00011111; 
        d_reg_new.alu = ADDop; // for pc + imm culculate 
        d_reg_new.op1 = pc;
        d_reg_new.op2 = imm_constructor(inst);
        if (func3 == 0b000) {
          d_reg_new.inst = BEQ;
        } else if (func3 == 0b001) {
          d_reg_new.inst = BNE;
        } else if (func3 == 0b100) {
          d_reg_new.inst = BLT;
        } else if (func3 == 0b101) {
          d_reg_new.inst = BGE;
        } else if (func3 == 0b110) {
          d_reg_new.inst = BLTU;
        } else if (func3 == 0b111) {
          d_reg_new.inst = BGEU;
        } else {
          //std::cout << "ERROR: INVALID BRANCH INSTRUCTION" << std::endl;
        }
        break;
      }
      case 0b00000011: {// LOAD
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        uint32_t func3 = (inst >> 12) & 0b0111; //mask the last 3 bit
        d_reg_new.alu = ADDop; // culculate offset
        d_reg_new.dest = (inst >> 7) & 0b11111; 
        d_reg_new.rs1 = (inst >> 15) & 0b11111;
        d_reg_new.op1 = reg[d_reg_new.rs1];
        d_reg_new.op1_from_rs1 = true;
        d_reg_new.op2 = imm_constructor(inst);
        if (func3 == 0b000) {
          d_reg_new.read_signed_mem = true;
          d_reg_new.mem_len = 1;
          d_reg_new.inst = LB;
        } else if (func3 == 0b001) {
          d_reg_new.read_signed_mem = true;
          d_reg_new.mem_len = 2;
          d_reg_new.inst = LH;
        } else if (func3 == 0b010) {
          d_reg_new.read_signed_mem = true;
          d_reg_new.mem_len = 4;
          d_reg_new.inst = LW;
        } else if (func3 == 0b100) {
          d_reg_new.read_unsigned_mem = true;
          d_reg_new.mem_len = 1;
          d_reg_new.inst = LBU;
        } else if (func3 == 0b101) {
          d_reg_new.read_unsigned_mem = true;
          d_reg_new.mem_len = 2;
          d_reg_new.inst = LHU;
        } else {
          //std::cout << "ERROR: INVALID LOAD INSTRUCTION" << std::endl;
        }
        break;
      }
      case 0b00100011: {// SAVE
        d_reg_new.branch_enable = false;
        d_reg_new.write_mem = true;
        uint32_t func3 = (inst >> 12) & 0b0111; //mask the last 3 bit
        d_reg_new.alu = ADDop; // culculate offset
        d_reg_new.rs2 = (inst >> 20) & 0b11111; 
        d_reg_new.rs1 = (inst >> 15) & 0b11111;
        d_reg_new.op1 = reg[d_reg_new.rs1];
        d_reg_new.op1_from_rs1 = true;
        d_reg_new.op2 = imm_constructor(inst);
        d_reg_new.save_value = reg[d_reg_new.rs2]; // save_value
        if (func3 == 0b000) {
          d_reg_new.inst = SB;
          d_reg_new.mem_len = 1;
        } else if (func3 == 0b001) {
          d_reg_new.inst = SH;
          d_reg_new.mem_len = 2;
        } else if (func3 == 0b010) {
          d_reg_new.inst = SW;
          d_reg_new.mem_len = 4;
        } else {
          //std::cout << "ERROR: INVALID SAVE INSTRUCTION" << std::endl;
        }
        break;
      }
      case 0b00010011: {// IMM RELATE OPERATIONS
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        uint32_t func3 = (inst >> 12) & 0b0111; //mask the last 3 bit
        uint32_t imm = imm_constructor(inst); // must mask last 5 bit for shift logic
        d_reg_new.rs1 = (inst >> 15) & 0b11111;
        d_reg_new.dest = (inst >> 7) & 0b11111;
        d_reg_new.op1_from_rs1 = true;
        if (func3 == 0b001 || func3 == 0b101) { // shift logic
          imm = imm & 0b11111;
          bool isarithmetic = (inst >> 30) & 0b1; // 1 for arithmetic
          d_reg_new.op1 = reg[d_reg_new.rs1];
          d_reg_new.op2 = imm;
          if (func3 == 0b001) { //SLLI
            d_reg_new.alu = SLLop;
            d_reg_new.inst = SLLI;
          } else if (isarithmetic) {
            d_reg_new.alu = SRAop;
            d_reg_new.inst = SRAI;
          } else {
            d_reg_new.alu = SRLop;
            d_reg_new.inst = SRLI;
          }
        } else { // ordinary operations
          d_reg_new.op1 = reg[d_reg_new.rs1];
          d_reg_new.op2 = imm;
          if (func3 == 0b000) {
            d_reg_new.alu = ADDop;
            d_reg_new.inst = ADDI;
          } else if (func3 == 0b010) {
            d_reg_new.alu = SLTop;
            d_reg_new.inst = SLTI;
          } else if (func3 == 0b011) {
            d_reg_new.alu = SLTUop;
            d_reg_new.inst = SLTIU;
          } else if (func3 == 0b100) {
            d_reg_new.alu = XORop;
            d_reg_new.inst = XORI;
          } else if (func3 == 0b110) {
            d_reg_new.alu = ORop;
            d_reg_new.inst = ORI;
          } else if (func3 == 0b111) {
            d_reg_new.alu = ANDop;
            d_reg_new.inst = ANDI;
          } else {
            //std::cout << "ERROR: INVALID IMMIDIATE INSTRUCTION" << std::endl;
          }
        }
        break;
      }
      case 0b00110011: {// R-TYPE
        d_reg_new.write_reg = true; // allow wb
        d_reg_new.branch_enable = false;
        uint32_t func3 = (inst >> 12) & 0b0111; //mask the last 3 bit
        bool is_arith_or_sub = (inst >> 30) & 0b1;
        d_reg_new.rs2 = (inst >> 20) & 0b11111; // must mask last 5 bit
        d_reg_new.rs1 = (inst >> 15) & 0b11111;
        d_reg_new.op1 = reg[d_reg_new.rs1];
        d_reg_new.op2 = reg[d_reg_new.rs2];
        d_reg_new.op1_from_rs1 = true;
        d_reg_new.op2_from_rs2 = true;
        d_reg_new.dest = (inst >> 7) & 0b11111;
        if (func3 == 0b000) { // add or sub
          if (is_arith_or_sub) {
            d_reg_new.alu = SUBop;
            d_reg_new.inst = SUB;
          } else {
            d_reg_new.alu = ADDop;
            d_reg_new.inst = ADD;
          } 
        } else if (func3 == 0b001) {
            d_reg_new.alu = SLLop;
            d_reg_new.inst = SLL;
        } else if (func3 == 0b010) {
            d_reg_new.alu = SLTop;
            d_reg_new.inst = SLT;
        } else if (func3 == 0b011) {
            d_reg_new.alu = SLTUop;
            d_reg_new.inst = SLTU;
        } else if (func3 == 0b100) {
            d_reg_new.alu = XORop;
            d_reg_new.inst = XOR;
        } else if (func3 == 0b101) { // srl or sra
          if (is_arith_or_sub) {
            d_reg_new.alu = SRAop;
            d_reg_new.inst = SRA;
          } else {
            d_reg_new.alu = SRLop;
            d_reg_new.inst = SRL;
          } 
        } else if (func3 == 0b110) {
            d_reg_new.alu = ORop;
            d_reg_new.inst = OR;
        } else if (func3 == 0b111) {
            d_reg_new.alu = ANDop;
            d_reg_new.inst = AND;
        } else {
          //std::cout << "ERROR: INVALID R-TYPE INSTRUCTION" << std::endl;
        }
        break;
      }
      case 0b01110011: {// ECALL
        /**
         * ecall will be handled at exe stage! (mostly)
         * but stop program at onece because the next fatch code is invalid!
         * rs1 : x17(a7), store syscall type
         * rs2 : x10(a0) store syscall param
         * rd : x10(a0) store return value
        */
        d_reg_new.write_reg = true; // allow wb (caution, wb of ecall may be different!)
        d_reg_new.branch_enable = false;
        d_reg_new.inst = ECALL;
        d_reg_new.rs1 = 17; // x17 = a7
        d_reg_new.rs2 = 10; // x10 = a0
        d_reg_new.op1_from_rs1 = true;
        d_reg_new.op2_from_rs2 = true;
        d_reg_new.op1 = reg[d_reg_new.rs1]; // type
        d_reg_new.op2 = reg[d_reg_new.rs2]; // param
        d_reg_new.dest = 10; // x10 = a0
      
        break;
      }
      default: {// ERROR
        //std::cout << "ERROR: INVALID OPCODE" << std::endl;
      }
    }
    d_reg_new.pc = pc;
    d_reg_new.original_opcode = opcode; // denote for data hazerd detection
    d_reg_new.bubble = false; // not only true can propogate, false can propogate too! 

  } 
  if (f_reg.bubble) {
    d_reg_new.bubble = true; // propogate
  }
}

// execute instruction, deal with bubble and stall, check hazard and forward
// data update pipeline register
void Simulator::excecute() {
  if(!d_reg.bubble && d_reg.stall == 0) {

    uint32_t pc = d_reg.pc; // get the pc
    Instruction inst = d_reg.inst;
    ALUop aluopcode = d_reg.alu;
    int32_t save_value = d_reg.save_value; // saved value for save operations
    uint32_t rs1 = d_reg.rs1;
    uint32_t rs2 = d_reg.rs2;
    int32_t op1 = d_reg.op1;
    int32_t op2 = d_reg.op2;
    uint32_t dest = d_reg.dest; // rd

    // used_for_branch
    int32_t rs1_v = reg[rs1];
    int32_t rs2_v = reg[rs2];

    bool branch_predict = d_reg.branch_predict; // previous prediction
    bool branch_enable = d_reg.branch_enable; // used here
    bool is_op1_from_rs1 = d_reg.op1_from_rs1;
    bool is_op2_from_rs2 = d_reg.op2_from_rs2;

    /// update op1,2. make sure they are not pc or imm
    if (is_op1_from_rs1) { // op1: cann't be pc
      op1 = reg[rs1];
    }

    if (is_op2_from_rs2) { // op2: cann't be imm
      op2 = reg[rs2];
    }

    if (inst == SW || inst == SH || inst == SB) { // update save value
      save_value = reg[rs2];
    }

    // check lw-data hazerd that have to stall

    // bubble generator //
    // geberate bubble only when d_reg is lw (EXE stage is lw), d_reg_new (ID stage) is rs1 or rs2 is rd of lw 

    if (
      (d_reg.original_opcode == 0b00000011) // LOAD's
      &&
      (d_reg.dest == d_reg_new.rs1 || d_reg.dest == d_reg_new.rs2)
      ) { // due to the implement of forward algorithm, we only need to consider direct lw
      //need_bubble = true;
      d_reg.stall = 3; // stall 2 cycle to discard if, id part
      this->pc -= 8; // make sure that after stall, the correct instruction will come back
      history.stall_cycle_count += 2; // count hazerd
      history.data_hazard_count += 1;
    }

    /////////// check hazard and forward data ////////////
    // 1. m_reg's load or dest instruction
    // 2. e_reg's dest instruction (write_reg == true)
    bool prev_isload = e_reg.inst == LW || e_reg.inst == LB || e_reg.inst == LH || e_reg.inst == LBU || e_reg.inst == LHU;
    bool now_issave = inst == SW || inst == SB || inst == SH;
    bool is_branch = d_reg.original_opcode == 0b1100011; // is_branch

    if (m_reg.write_reg && m_reg.dest_reg != 0) {
      if (m_reg.dest_reg == rs1 && m_reg.dest_reg != 0 && is_op1_from_rs1) { // check data dep
        op1 = m_reg.out;
        history.data_hazard_count += 1;
      } 
      if ( m_reg.dest_reg == rs2 && !now_issave && is_op2_from_rs2) {
        op2 = m_reg.out;
        history.data_hazard_count += 1;
      } 
      if(now_issave && m_reg.dest_reg == rs2) { // rs2 for save is save value, not op2!
        save_value = m_reg.out;
        history.data_hazard_count += 1;
      }
      //branch forward
      if (m_reg.dest_reg == rs1 && m_reg.dest_reg != 0 && is_branch) { // check data dep
        rs1_v = m_reg.out;        
        history.data_hazard_count += 1;
      } 
      if ( m_reg.dest_reg == rs2 && !now_issave && is_branch) {
        rs2_v = m_reg.out;
        history.data_hazard_count += 1;
      } 

    } 

    // exe stage will write back later than mem stage

    if (e_reg.write_reg  && e_reg.dest_reg != 0 && !prev_isload) {
      if (e_reg.dest_reg == rs1 && is_op1_from_rs1) { // check data dep
        op1 = e_reg.out;
        history.data_hazard_count += 1;
      } 
      if ( e_reg.dest_reg == rs2 && !now_issave && is_op2_from_rs2) {
        op2 = e_reg.out;
        history.data_hazard_count += 1;
      } 
      if (e_reg.dest_reg == rs2 && now_issave) { // issave
        save_value = e_reg.out;
        history.data_hazard_count += 1;
      }
      //branch forward
      if (e_reg.dest_reg == rs1 && e_reg.dest_reg != 0 && is_branch) { // check data dep
        rs1_v = e_reg.out;        
        history.data_hazard_count += 1;
      } 
      if ( e_reg.dest_reg == rs2 && !now_issave && is_branch) {
        rs2_v = e_reg.out;
        history.data_hazard_count += 1;
      } 
    }

    // we decode at id, so 
    

    //////////////////////////////////////////////////////

    
    // propogate part
    e_reg_new.write_reg = d_reg.write_reg; // propogate
    e_reg_new.read_signed_mem = d_reg.read_signed_mem; // propogate
    e_reg_new.read_unsigned_mem = d_reg.read_unsigned_mem;
    e_reg_new.write_mem = d_reg.write_mem;
    e_reg_new.save_value = save_value; // forward or not?
    e_reg_new.mem_len = d_reg.mem_len;
    e_reg_new.pc = pc; // pc propogate
    e_reg_new.inst = inst; // inst propogate
    e_reg_new.op1 = op1;
    e_reg_new.op2 = op2; // op propogate
    e_reg_new.dest_reg = dest; // rd propogate
    e_reg_new.rs1 = rs1;
    e_reg_new.rs2 = rs2;
    
    
  
    // main alu / branch / jump algorithm
    if (inst != ECALL) {

      e_reg_new.out = ALU(op1, op2, aluopcode); // wb to dest (not branch)
      
      if (branch_enable) { // branch
        isjump = branch_controler(rs1_v, rs2_v, inst);
        jump_addr = e_reg_new.out;
      }
      if (inst == JAL) { //jump and link
        isjump = true; // always true
        jump_addr = e_reg_new.out;
        e_reg_new.out = pc + 4; // update out

      } else if (inst == JALR) { // jalr need some modification
        isjump = true; // always true
        e_reg_new.out &= (~(uint32_t)0x1); // mask the LSB to make it align 
        jump_addr = e_reg_new.out;
        e_reg_new.out = pc + 4; // update out
      }
      // if predict lost
      if (isjump != branch_predict) {
        d_reg.stall = 4; // include this cycle, do not allow error instruction mover
        history.stall_cycle_count += 3;
        history.control_hazard_count += 1;
      }
    } else { // ecall 
      if (op1 == 0) {
        uint32_t ptr = op2;
        uint32_t latency;
        char ch = memory->getByte(ptr, & latency);
        history.cycle_count += latency;
        while (ch != '\0') {
          printf("%c", ch);
          ptr += 1;
          ch = memory->getByte(ptr, & latency);
          history.cycle_count += latency;
        }
        
      } else if (op1 == 1) {
        e_reg_new.write_reg = false;
        printf("%c", op2);

      } else if (op1 == 2) {
        e_reg_new.write_reg = false;
        printf("%d", op2);

      } else if (op1 == 3) {
        e_reg_new.write_reg = false;
        e_reg_new.need_exit = true; // set flag
        
      } else if (op1 == 4) {
        e_reg_new.write_reg = true;
        char ch = '\0';
        scanf(" %c", &ch);
        e_reg_new.out = ch;

      } else if (op1 == 5) {
        e_reg_new.write_reg = true;
        int32_t num = 0;
        scanf(" %d", &num);
        e_reg_new.out = num;
      } 
    }
    
  
    e_reg_new.bubble = false; // not only true can propogate, false can propogate too!
  } 
  if (d_reg.bubble) {
    e_reg_new.bubble = true;
  }

 
}

// memory access, deal with bubble and stall
void Simulator::memory_access() {
  if(!e_reg.bubble && e_reg.stall == 0) {

    // read reg
    uint32_t pc = e_reg.pc;
    Instruction inst = e_reg.inst;
    int32_t op1 = e_reg.op1;
    int32_t op2 = e_reg.op2;
    uint32_t rs2 = e_reg.rs2;
    uint32_t mem_len = e_reg.mem_len;
    uint32_t addr = e_reg.out;
    int32_t save_value = e_reg.save_value;
    bool read_signed_mem = e_reg.read_signed_mem;
    bool read_unsigned_mem = e_reg.read_unsigned_mem;
    bool write_mem = e_reg.write_mem;
  
    // propogate
    m_reg_new.op1 = op1;
    m_reg_new.op2 = op2;
    m_reg_new.pc = pc;
    m_reg_new.write_reg = e_reg.write_reg;
    m_reg_new.inst = inst;
    m_reg_new.dest_reg = e_reg.dest_reg;
    m_reg_new.need_exit = e_reg.need_exit;
    
    if (write_mem) { // update save_value
      save_value = reg[rs2];
    }

    // saved value data hazred forward, may be saved_value is in wb satge
    if (write_mem && m_reg.write_reg && (rs2 == m_reg.dest_reg)) { // may be wb hazerd
      save_value = m_reg.out;
      history.data_hazard_count += 1;
    } 

    if (!memory->isPageExist(addr)) { // back up, make sure memory is exist!
      memory->addPage(addr);
    }

    if (write_mem) { //SW, SH, SB
      uint32_t data = save_value;
      uint32_t latency = 0;
      if (mem_len == 1) { //SB
        memory->setByte(addr, data, &latency);

      } else if (mem_len == 2) {
        memory->setShort(addr, data, & latency);

      } else if (mem_len == 4) {
        memory->setInt(addr, data, &latency);

      } else {
        //std::cout << "UNALIGNED SAVE VALUE" << std::endl; 
      }
      history.cycle_count += latency;
    }
    uint32_t latency = 0;
    if (read_signed_mem) {
      if (mem_len == 1) { //LB
        int32_t signed_buffer = static_cast<int32_t>(memory->getByte(addr, &latency));
        m_reg_new.out = (signed_buffer << 24) >> 24; // sign extend
      } else if (mem_len == 2) { //LH
        int32_t signed_buffer = static_cast<int32_t>(memory->getShort(addr, &latency));
        m_reg_new.out = (signed_buffer << 16) >> 16; // sign extend
      } else if (mem_len == 4) { //LW
        m_reg_new.out = static_cast<int32_t>(memory->getInt(addr, &latency));
      } else {
        //std::cout << "UNALIGNED SIGNED LOAD VALUE" << std::endl; 
      }
    } else if (read_unsigned_mem) {
      if (mem_len == 1) { //LBU
        m_reg_new.out = static_cast<uint32_t>(memory->getByte(addr, &latency));
      } else if (mem_len == 2) { //LHU
        m_reg_new.out = static_cast<uint32_t>(memory->getShort(addr, &latency));
      } else {
        //std::cout << "UNALIGNED UNSIGNED LOAD VALUE" << std::endl; 
      }
    } 
    history.cycle_count += latency;

    if (!(write_mem || read_signed_mem || read_unsigned_mem)) { // do not write
      m_reg_new.out = e_reg.out;
    }

    m_reg_new.bubble = false; // not only true can propogate, false can propogate too!
  } 
  if (e_reg.bubble) {
    m_reg_new.bubble = true;
  }
}

// write result to register, deal with bubble and stall
// check for data hazard and forward data
// update pipeline register
void Simulator::write_back() {
  if(!m_reg.bubble && m_reg.stall == 0) {
    // uint32_t pc = m_reg.pc;
    Instruction inst = m_reg.inst;
    // int32_t op1 = m_reg.op1;
    // int32_t op2 = m_reg.op2;
    uint32_t dest_reg = m_reg.dest_reg;
    int32_t data = m_reg.out;
    bool write_reg = m_reg.write_reg;
    if (write_reg) {
      reg[dest_reg] = data;
    }
    if (inst != UNKNOWN) { // count instructions
      history.inst_count += 1;
    }
    if (m_reg.need_exit) { //exit program immidiately
      if (print_history) {
        std::cout << "inst_count: "  << history.inst_count << std::endl;
        std::cout << "cycle_count: "  << history.cycle_count << std::endl;
        std::cout << "stall_cycle_count: "  << history.stall_cycle_count << std::endl;
        std::cout << "data_hazard_count: "  << history.data_hazard_count << std::endl;
        std::cout << "control_hazard_count: "  << history.control_hazard_count << std::endl;
      }
      exit(0);
    } 
  } 
  if (m_reg.bubble && !m_reg_new.bubble) {
    m_reg_new.bubble = false; // bubble just stall once, if you want to stall more than once, use stall
  }
}

// handle system according to system call number in reg a7
// exit program using exit(0);
int32_t Simulator::handle_system_call(int32_t op1, int32_t op2) { return 0; }
