//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"

@interface BNRPortfolio ()

@property (nonatomic) NSMutableArray *portfolio;

@end

@implementation BNRPortfolio

- (void)addHolding:(BNRStockHolding *)a
{
    if (!_portfolio) {
        _portfolio = [[NSMutableArray alloc] init];
    }
    [_portfolio addObject:a];
}

- (float) calcTotalValue
{
    _totalValue = 0;
    for (BNRStockHolding *s in _portfolio) {
        _totalValue += s.valueInDollars;
    }
    return _totalValue;
}

- (NSArray *) topThreeHoldings;
{
    NSSortDescriptor *voh = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:FALSE];
    [_portfolio sortUsingDescriptors: @[voh]];
    return [_portfolio subarrayWithRange:NSMakeRange(0, 3)];
}


@end
