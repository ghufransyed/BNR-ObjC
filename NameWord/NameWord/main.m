//
//  main.m
//  NameWord
//
//  Created by Ghufran Syed on 7/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int counter = 0;
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding error:NULL];
        
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding error:NULL];

        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names) {
            for (NSString *w in words) {
                NSComparisonResult r = [n compare:w
                                          options:NSCaseInsensitiveSearch];
                    if (r == NSOrderedSame) {
                        // NSLog(@"%@ %@", n, w);
                        counter++;
                    }
            }
            
        }
        NSLog(@"The number of matches is: %d", counter);
    }
    return 0;
}

