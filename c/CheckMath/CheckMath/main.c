//
//  main.c
//  CheckMath
//
//  Created by Ghufran Syed on 7/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double theta = (double) *argv[1];
    double result = sin(theta) * sin(theta) +
                    cos(theta) * cos(theta);
    printf("sin^2 theta + cos^2 theta = %f", result);
    

    return 0;
}

