//
//  main.m
//  Stringz
//
//  Created by Ghufran Syed on 8/14/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i++) {
//            [str appendString:@"Aaron is cool!\n"];
//        }
        
        NSError *error;
        
//        BOOL success = [str writeToFile:@"/tmp/cool.txt"
//                             atomically:YES
//                               encoding:NSUTF8StringEncoding
//                                  error:&error];
//
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@",
//                  [error localizedDescription]);
//        }
        
        NSString *str2 = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                         encoding:NSASCIIStringEncoding
                                                            error:&error];
        
        if (!str2) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str2);
        }
        
    }
    return 0;
}

