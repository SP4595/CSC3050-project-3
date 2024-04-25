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
    int f1 = 0, f2 = 1;
    int a[] = {1, 2, 3, 4, 5};
    if (f1) {
        print_s("Error, f1 is false, we should not go here!\n");
    }
    if (f2) {
        print_s("Yes, f2 is true\n");
    }

    print_s("a[5] = ");
    for (int i = 0; i < 5; ++i) {
        print_d(a[i]);
        print_c(' '); 
    }
    print_c('\n');

    for (int i = 1; i < 5; ++i) {
        a[i] += a[i - 1] * 10;
    }

    print_s("a[5] = ");
    for (int i = 0; i < 5; ++i) {
        print_d(a[i]);
        print_c(' '); 
    }
    print_c('\n');
    exit_proc();
}