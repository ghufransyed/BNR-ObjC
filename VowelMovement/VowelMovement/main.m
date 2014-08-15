//
//  main.m
//  VowelMovement
//
//  Created by Ghufran Syed on 8/15/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
       
        // void (^devowelizer) (id, NSUInteger, BOOL *);
//        ArrayEnumerationBlock devowelizer;
        
//        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
//            
//            
//            NSRange yRange = [string rangeOfString:@"y"
//                                           options:NSCaseInsensitiveSearch];
//            if (yRange.location != NSNotFound) {
//                *stop = YES;
//                return;
//            }
//            
//            NSMutableString *newString = [NSMutableString stringWithString:string];
//            
//            for (NSString *s in vowels) {
//                NSRange fullRange = NSMakeRange(0, [newString length]);
//                [newString replaceOccurrencesOfString:s
//                                           withString:@""
//                                              options:NSCaseInsensitiveSearch
//                                                range:fullRange];
//            }
//            
//            [devowelizedStrings addObject:newString];
//        };
        
        [originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL *stop) {
            
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
        }];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}

