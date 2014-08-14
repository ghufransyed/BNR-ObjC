//
//  main.c
//  person_heap
//
//  Created by Ghufran Syed on 7/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}


int main(int argc, const char * argv[])
{
    Person *mikey = malloc(sizeof(Person));
    
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    free(mikey);
    mikey = NULL;
    
    return 0;
}

