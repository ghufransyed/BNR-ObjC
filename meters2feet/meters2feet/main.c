//
//  main.c
//  meters2feet
//
//  Created by Ghufran Syed on 7/20/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters,
                           unsigned int *ftPtr,
                           double *inPtr){
    *ftPtr = (unsigned int) (meters * 3.281);
    *inPtr = ((meters * 3.281) - *ftPtr)*12;
}

int main(int argc, const char * argv[])
{
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%0.1f meters is equal to %d feet and %.1f inches.",
           meters, feet, inches);

    return 0;
}

