//
//  main.m
//  CompName
//
//  Created by Ghufran Syed on 7/26/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        NSHost *myComp = [NSHost currentHost];
        NSString *name = [myComp localizedName];
        NSLog(@"The name of my computer is %@", name);
        
    }
    return 0;
}

