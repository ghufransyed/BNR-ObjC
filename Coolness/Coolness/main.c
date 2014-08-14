//
//  main.c
//  Coolness
//
//  Created by Ghufran Syed on 7/16/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>

int main(int argc, const char * argv[])
{
    printf("Who is Cool? ");
    const char *name = readline(NULL);
    printf("%s is cool!\n\n", name);
    return 0;
 
//    int i;
//    for (i = 0; i < 12; i++) {
//        if (i % 3 == 0) {
//            continue;
//        }
//        printf("Checking i = %d\n", i);
//        if (i + 90 == i * i) {
//            break;
//        }
//    }
//    printf("The answer is %d.\n", i );
//   
    
//    for (int i = 0; i < 12; i++) {
//        printf("%d. Saira is Cool\n", i);
//    }
    
    
//    int i = 0;
//    while (i < 12) {
//        printf("%d. Saira is cool\n", i);
//        i++;
//    }

}

