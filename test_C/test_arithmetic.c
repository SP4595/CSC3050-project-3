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

int main() {
    int a = 10, b = 20, c = 30, d = 12345, e = 1, f = 2;
    int x = a + b;
    print_d(x);
    print_c('\n');
    int y = a - b;
    print_d(y);
    print_c('\n');
    int z = c * d;
    print_d(z);
    print_c('\n');

    x = d / c;
    print_d(x);
    print_c('\n');
    y = d << f;
    print_d(y); 
    print_c('\n');
    z = d >> 4;
    print_d(z);
    print_c('\n');
    exit_proc();
}