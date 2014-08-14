//
//  main.m
//  TimeAfterTime
//
//  Created by Ghufran Syed on 7/26/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"The date is %@", now);
        NSLog(@"It has been %f seconds since the start of 1970", seconds);
        
        NSDate *future =[now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@", future);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                           inUnit:NSMonthCalendarUnit
                                          forDate:now];
        unsigned long week = [cal ordinalityOfUnit:NSWeekCalendarUnit
                                           inUnit:NSMonthCalendarUnit
                                          forDate:now];
        
        NSLog(@"This is day %lu of the month", day);
        NSLog(@"This is week %lu of the month", week);
        
        
        
    }
    return 0;
}

