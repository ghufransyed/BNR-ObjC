//
//  main.c
//  Addresses
//
//  Created by Ghufran Syed on 7/19/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    float j = 3.14;
    int *addressofI = &i;
    float *addressofJ = &j;
    
    printf("i stores its value at %p\n", addressofI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addressofI is %d\n", *addressofI);
    
    *addressofI = 89;
    printf("Now i is %d\n", i);
    
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));

    printf("An float is %zu bytes\n", sizeof(j));
    printf("A pointer is %zu bytes\n", sizeof(addressofJ));

    return 0;
}

