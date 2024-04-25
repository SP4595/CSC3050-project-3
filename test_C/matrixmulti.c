#include "lib.h"

/**
 * Simple implementation of common library functions
 */

#include "lib.h"

void print_d(int num)
{
    asm("li a7, 2;"
        "scall");
}

void print_s(const char *str)
{
    asm("li a7, 0;"
        "scall");
}

void print_c(char ch)
{
    asm("li a7, 1;"
        "scall");
}

void exit_proc() {
    asm("li a7, 3;"
        "scall");
}

char read_char()
{
    char result;
    asm("li a7, 4;"
        "scall");
    asm("addi %0, a0, 0" : "=r" (result));
    return result;
}

long long read_num()
{
    long long result;
    asm("li a7, 5;"
        "scall");
    asm("addi %0, a0, 0" : "=r" (result));
    return result;
}

const int M = 10;

void matmulti(int a[M][M], int b[M][M], int c[M][M], int M) {
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      c[i][j] = 0;
      for (int k = 0; k < M; ++k) {
        c[i][j] += a[i][k] * b[k][j];
      }
    }
  }
}

int main() {
  int A[M][M], B[M][M], C[M][M];

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      A[i][j] = i;
      B[i][j] = j;
      C[i][j] = 0;
    }
  }

  print_s("The content of A is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(A[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  print_s("The content of B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(B[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  matmulti(A, B, C, M);

  print_s("The content of C=A*B is: \n");
  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < M; ++j) {
      print_d(C[i][j]);
      print_s(" ");
    }
    print_s("\n");
  }

  exit_proc();
}