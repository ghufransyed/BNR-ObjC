//
//  NSString+BNRVowelCounting.m
//  VowelCounter
//
//  Created by Ghufran Syed on 8/24/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "NSString+BNRVowelCounting.h"

@implementation NSString (BNRVowelCounting)

-(int) bnr_vowelCount
{
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    
    NSUInteger count = [self length];
    int sum = 0;
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end
