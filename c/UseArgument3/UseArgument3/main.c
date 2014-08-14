//
//  main.c
//  UseArgument3
//
//  Created by Ghufran Syed on 7/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    printf("Hello, %s, %s, %s, ", argv[3] , argv[2] , argv[1]);
    printf("How are you?\n");
    return 0;
}

// argv[0] is the name of the program
// argv[1] is the first argument passed
// printf uses 'tokens' such as %s, with corresponding parameters in a comma separated list after
// (java print, by contrast, accepts variable as an argument, and prints the 'contents')

