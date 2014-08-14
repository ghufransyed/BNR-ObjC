//
//  main.c
//  Squarer
//
//  Created by Ghufran Syed on 7/16/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//
#include <stdio.h>
#include <stdlib.h>

int squarer(int x)
{
    return x * x;
}

int main(int argc, const char *argv[])
{
    printf("\"%s\" squared is \"%d\"\n", argv[1], squarer(atoi(argv[1])));
}

// argv[0] contains the name of the program, argv[1] contains the first argument
// argc contains the number of arguments passed
// This is different to java where arg[0] is the first argument