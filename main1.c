#include <stdio.h>
#include "sub1.h"
#include "macro1.h"

int main(const int argc, const char **argv)
{
    puts("main1.c: main()");
    subf();
    printf("macro1: max(1,3)=%d\n", max(1, 3));
    return 0;
}
