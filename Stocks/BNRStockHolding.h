//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *symbol;

//{
//    float _purchaseSharePrice;
//    float _currentSharePrice;
//    int _numberOfShares;
//}
//- (void) setPurchaseSharePrice:(float) p;
//- (void) setCurrentSharePrice:(float) c;
//- (void) setNumberOfShares:(int) n;

- (float) costInDollars;
- (float) valueInDollars;



@end
