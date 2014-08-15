//
//  BNRLogger.m
//  Callbacks
//
//  Created by Ghufran Syed on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger


- (void) zoneChange: (NSNotificationCenter *) note
{
    NSLog(@"The system time zone has changed!");
}



- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    // NSLog(@"The whole string is %@", string);
}

- (void)connection:(NSURLConnection *)connection
  didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

- (NSString *) lastTimeString;
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void) updateLastTime:(NSTimer *) t;
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}




@end
