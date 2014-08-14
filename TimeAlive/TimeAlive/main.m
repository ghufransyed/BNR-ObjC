//
//  main.m
//  TimeAlive
//
//  Created by Ghufran Syed on 7/26/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //create new date object for date of birth aug 14 1972
        
        NSDateComponents *components = [[NSDateComponents alloc] init];
        [components setYear:1972];
        [components setMonth:8];
        [components setDay:14];
        [components setHour:10];
        [components setMinute:15];
        [components setSecond:30];
        
        NSCalendar *calObj = [[NSCalendar alloc]
                              initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [calObj dateFromComponents:components];
        
        
        //create date object for now
        NSDate *now = [NSDate date];
        unsigned long timeAlive = [now timeIntervalSinceDate:dateOfBirth];
        
        //print output
        NSLog(@"Ghufran has been alive for %lu seconds", timeAlive);
        
        
    }
    return 0;
}

