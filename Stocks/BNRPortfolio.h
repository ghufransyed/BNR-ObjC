//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio : NSObject

@property (nonatomic, readonly) float totalValue;

- (float) calcTotalValue;
- (void) addHolding : (BNRStockHolding *) a;

// may need to add method to remove stocks if required
// would need to figure out whether to remove a particular
// stock, or just the most recent one, or some other
// criteria...

- (NSArray *) topThreeHoldings;


@end
