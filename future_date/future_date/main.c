//
//  main.c
//  future_date
//
//  Created by Ghufran Syed on 7/25/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>


int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
   
    struct tm future;
    long secondsSince1970_plus_4million = secondsSince1970 + 4000000;
    localtime_r(&secondsSince1970_plus_4million, &future);

    printf("The time will be %d:%d:%d in 4 million seconds\n", future.tm_hour, future.tm_min, future.tm_sec);
    printf("The date will be %d/%d/%d in 4 million seconds\n", (future.tm_mon + 1), future.tm_mday, (future.tm_year + 1900));
    return 0;
}

