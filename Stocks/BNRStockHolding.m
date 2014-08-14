//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float) costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}

- (float) valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}

@end
