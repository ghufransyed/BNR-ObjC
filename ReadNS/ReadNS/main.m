//
//  main.m
//  ReadNS
//
//  Created by Ghufran Syed on 7/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *name = [NSString stringWithUTF8String:readline("Who is cool?")];
        NSLog(@"%@ is cool!", name);
        
    }
    return 0;
}

