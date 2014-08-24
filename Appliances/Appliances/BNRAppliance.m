//
//  BNRAppliance.m
//  Appliances
//
//  Created by Ghufran Syed on 8/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype) init
{
    return [self initWithProductName:@"Unknown"];
}

- (instancetype) initWithProductName:(NSString *)pn
{
    if (self = [super init]) {
        _productName = [pn copy];
        _voltage = 120;
//        [self setProductName:pn];
//        [self setVoltage:120];
    }
    return self;
}

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
