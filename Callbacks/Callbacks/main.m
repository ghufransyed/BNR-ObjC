//
//  main.m
//  Callbacks
//
//  Created by Ghufran Syed on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRLogger *logger = [[BNRLogger alloc] init];
        
//        [[NSNotificationCenter defaultCenter] addObserver:logger
//                                                 selector:@selector(zoneChange:)
//                                                     name:NSSystemTimeZoneDidChangeNotification
//                                                   object:nil];
        
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock: ^(NSNotification *note)
                                                        {
                                                            NSLog(@"The system time zone has changed!");
                                                        }];
        
        
        // appears to print (log) the message three times
        // usually, want to remove the Observer using
        // [edit] this is wront, the error was having name as 'nil' instead of name:NSSystemTimeZoneDidChangeNotification 
        // e.g. [[NSNotificationCenter defaultCenter] removeObserver:self name:@"ItemChange" object:nil];
        // but cannot do that with anonymouse block
            
//        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
//        
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        
//        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
//                                                                              delegate:logger
//                                                                      startImmediately:YES];
//        
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                          target:logger
//                                                        selector:@selector(updateLastTime:)
//                                                        userInfo:nil
//                                                         repeats:YES];
//        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

