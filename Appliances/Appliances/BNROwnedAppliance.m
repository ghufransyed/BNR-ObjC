//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Ghufran Syed on 8/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()

{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype) initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    if (self = [super initWithProductName:pn]) {
        _ownerNames = [[NSMutableSet alloc] init];
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    return self;
}

- (void) addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void) removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}
@end
