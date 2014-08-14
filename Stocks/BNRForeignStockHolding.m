//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float) costInDollars
{
    // return _conversionRate * [super costInDollars]; // need to use the existing method
    //the instance variables in the superclass seem to be out of scope
    return _conversionRate * super.costInDollars;
}

- (float) valueInDollars
{
    return _conversionRate * [super valueInDollars];
}

@end
