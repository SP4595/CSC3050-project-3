#ifndef SIMULATOR_H
#define SIMULATOR_H

#include "MemoryManager.h"
#include <cstdint>

const int REGNUM = 32; // number of register

enum Instruction {
  LUI = 0,
  AUIPC = 1,
  JAL = 2,
  JALR = 3,
  BEQ = 4,
  BNE = 5,
  BLT = 6,
  BGE = 7,
  BLTU = 8,
  BGEU = 9,
  LB = 10,
  LH = 11,
  LW = 12,
  LBU = 13,
  LHU = 14,
  SB = 15,
  SH = 16,
  SW = 17,
  ADDI = 18,
  SLTI = 19,
  SLTIU = 20,
  XORI = 21,
  ORI = 22,
  ANDI = 23,
  SLLI = 24,
  SRLI = 25,
  SRAI = 26,
  ADD = 27,
  SUB = 28,
  SLL = 29,
  SLT = 30,
  SLTU = 31,
  XOR = 32,
  SRL = 33,
  SRA = 34,
  OR = 35,
  AND = 36,
  ECALL = 37,
  UNKNOWN = -1,
};

enum ALUop {
  // Arithmetic
  ADDop = 0,
  SUBop = 1,
  // Logict
  ANDop = 2,
  ORop = 3,
  XORop = 4,
  // shifting
  SLLop = 5,
  SRLop = 6,
  SRAop = 7,
  // slt
  SLTop = 8, // rd = (rs1 < rs2)
  SLTUop = 9,
  // NOP
  Nop = -1, // should not exit 
};


// control signal list （not used, just for reference）
//struct ControlSignal {
//    uint32_t need_jump_1 = 0; // do I need jump?
//    uint32_t immselect_2 = 0; // imm is 12 bit or 20 bit?
//    uint32_t branch_enable_3 = 0; // enable branch?
//    uint32_t rs2_or_imm_3 = 0; // op2 is imm or rs2?
//    uint32_t rs1_or_pc_3 = 0; // op1 is pc or rs1?
//    uint32_t ALUop_3 = 0; // which alu operation?
//    uint32_t mem_write_4 = 0; //enable write?
//    uint32_t mem_read_4 = 0; // enable memory read
//    uint32_t which_write_5 = 0; // what to write back?
//    uint32_t regwrite_5 = 0; // do I nead write?
// };

// opcode field
const int OP_REG = 0x33;
const int OP_IMM = 0x13;
const int OP_LUI = 0x37;
const int OP_BRANCH = 0x63;
const int OP_STORE = 0x23;
const int OP_LOAD = 0x03;
const int OP_SYSTEM = 0x73;
const int OP_AUIPC = 0x17;
const int OP_JAL = 0x6F;
const int OP_JALR = 0x67;

class Simulator {
public:
  // some name for register //
  const int sp = 2; 
  const int ra = 1;
  const int zero = 0;
  //////////////////////////

  uint32_t pc; // initialize when loading ELF
  uint32_t reg[REGNUM]; // initialize in constructor
  uint32_t stack_base; // initialize in init_stack
  uint32_t max_stack_size; // initialize in init_stack
  MemoryManager* memory; // initialize in constructor

  ///// history print control /////

  bool print_history = false; // print out the history

  /////////////////////////////////

  // jump signal //
  
  /**
   * all pc related instruction must prepare for prediction fail.
  */

  bool isjump = false; // jump for fatch? generated at MEM stage, clear each cycle
  uint32_t bubble_generator = 0; // generate bubel
  bool need_bubble = false; // do we need bubble? generated at ID stage, clear after handling
  bool branch_predict = false;
  bool predict_correct = false; // check if prediction is correct
  uint32_t jump_addr = 0; // the address of jumping (we will know it in fetch stage (jalr not included), or officially get in MEM stage)
  /////////////////
  
  // control signal
  /**
   * the control signal belongs to different instructions in different stage
   * the name is to make sure that they are not belongs to same instructions, and please generate it stage-by-stage
  */
  
  Simulator(MemoryManager* memory, bool print_history = false);
  ~Simulator();

  void init_stack(uint32_t base_addr, uint32_t max_size);
  void simulate();

private:
  // can change according your need
  struct FetchRegister {
    bool bubble = false;
    uint32_t stall = 0;
    uint32_t pc = 0;
    uint32_t inst = 0;
    uint32_t len = 32;
    bool branch_predict = false;
  } f_reg, f_reg_new;

  // can change according your need
  struct DecodeRegister {
    bool bubble = false;
    uint32_t stall = 0;
    uint32_t rs1 = 0, rs2 = 0;
    uint32_t pc = 0;
    uint32_t original_opcode = 0; // used for bubble detect
    Instruction inst = UNKNOWN;
    bool branch_enable = false;
    bool read_unsigned_mem = false; // generate for propogate
    bool read_signed_mem = false;
    bool write_mem = false;
    bool write_reg = false;
    ALUop alu = Nop; // by default, write in
    int32_t op1 = 0;
    int32_t op2 = 0;
    uint32_t dest = 0; // rd
    bool op1_from_rs1 = false;
    bool op2_from_rs2 = false;
    int32_t save_value = 0; // used for save
    uint32_t mem_len = 0;
    bool branch_predict = false;
  } d_reg, d_reg_new;

  // can change according your need
  struct ExecuteRegister {
    bool bubble = false;
    uint32_t stall = 0;
    uint32_t pc = 0;
    Instruction inst = UNKNOWN;
    uint32_t rs1 = 0;
    uint32_t rs2 = 0;
    int32_t op1 = 0;
    int32_t op2 = 0;
    bool write_reg = false;
    uint32_t dest_reg = 0;
    // output of execute stage
    int32_t out = 0;
    bool write_mem = 0;
    bool read_unsigned_mem = 0;
    bool read_signed_mem = 0;
    bool need_exit = false; // do we need exit? generate at exe, handle at wb
    int32_t save_value = 0; // used for save
    uint32_t mem_len = 0;
  } e_reg, e_reg_new;

  // can change according your need
  struct MemoryRegister {
    bool bubble = false;
    uint32_t stall = 0; // how many cycle to stall

    uint32_t pc = 0;
    Instruction inst = UNKNOWN;
    int32_t op1 = 0;
    int32_t op2 = 0;
    int32_t out = 0;
    bool write_reg = false;
    bool need_exit = false; // do we need exit? generate at exe, handle at wb
    uint32_t dest_reg = 0;
  } m_reg, m_reg_new;

  // can change according your need
  struct History {
    uint32_t inst_count = 0;
    uint32_t cycle_count = 0;
    uint32_t stall_cycle_count = 0;
    uint32_t data_hazard_count = 0;
    uint32_t control_hazard_count = 0;
    uint32_t mem_hazard_count = 0;
  } history;

  void fetch();
  void decode();
  void excecute();
  void memory_access();
  void write_back();

  int32_t handle_system_call(int32_t op1, int32_t op2);
};

#endif
