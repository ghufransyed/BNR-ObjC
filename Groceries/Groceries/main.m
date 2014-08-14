//
//  main.m
//  Groceries
//
//  Created by Ghufran Syed on 7/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
       
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"Loaf of Bread"];
        [groceryList addObject:@"Container of Milk"];
        [groceryList addObject:@"Stick of Butter"];
        
        NSLog(@"My grocery list is:");
        for (NSString *item in groceryList) NSLog(@"%@", item);
    }
    return 0;
}

