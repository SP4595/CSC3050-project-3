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
    print_s("This is string from print_s()\n");
    print_d(123456);
    print_c('a');
    print_c('b');
    print_c('c');
    print_c('\n');

    print_s("Enter a number: ");
    int a = read_num();
    print_s("The number is: ");
    print_d(a);
    print_s("\n");

    print_s("Enter a character: ");
    char c = read_char();
    print_s("The character is: ");
    print_c(c);
    print_s("\n");

    exit_proc();
}