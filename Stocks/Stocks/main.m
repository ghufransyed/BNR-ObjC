//
//  main.m
//  Stocks
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
       // NSMutableArray *portfolio = [NSMutableArray new];
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        BNRStockHolding *s0 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *s2 = [[BNRStockHolding alloc] init];
        
        s0.purchaseSharePrice = 2.30;
        s0.currentSharePrice = 4.50;
        s0.numberOfShares = 40;
        s0.symbol = @"APL";
        
        s1.purchaseSharePrice = 12.19;
        s1.currentSharePrice = 10.56;
        s1.numberOfShares = 90;
        s1.symbol = @"IBM";
       
        s2.numberOfShares = 45.10;
        s2.currentSharePrice = 49.51;
        s2.numberOfShares = 210;
        s2.symbol = @"ITC";
       
        // portfolio[0] = s0;
        // portfolio[1] = s1;
        // portfolio[2] = s2;
        
        
        
        BNRForeignStockHolding *s3 = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *s4 = [[BNRForeignStockHolding alloc] init];
        BNRForeignStockHolding *s5 = [[BNRForeignStockHolding alloc] init];
        
        s3.purchaseSharePrice = 2.30;
        s3.currentSharePrice = 4.50;
        s3.numberOfShares = 40;
        s3.conversionRate = 0.73;
        s3.symbol = @"AAA";
        
        s4.purchaseSharePrice = 12.19;
        s4.currentSharePrice = 10.56;
        s4.numberOfShares = 90;
        s4.conversionRate = 0.73;
        s4.symbol = @"BCD";
       
        s5.purchaseSharePrice = 45.10;
        s5.currentSharePrice = 49.51;
        s5.numberOfShares = 210;
        s5.conversionRate = 0.73;
        s5.symbol = @"MMM";
       
        // portfolio[0] = s0;
        // portfolio[1] = s1;
        // portfolio[2] = s2;
        // portfolio[3] = s3;
        // portfolio[4] = s4;
        // portfolio[5] = s5;
        
        
        [portfolio addHolding:s0];
        [portfolio addHolding:s1];
        [portfolio addHolding:s2];
        [portfolio addHolding:s3];
        [portfolio addHolding:s4];
        [portfolio addHolding:s5];
        
        
        
//        for (BNRStockHolding *s in portfolio) {
//            NSLog(@"The value of %@ is currently %.2f",
//                  s, [s valueInDollars]);
//        }
//        for (int i = 0; i < [portfolio count]; i++) {
//            NSLog(@"The value of Stock %d is currently %.2f",
//                  i, [portfolio[i] valueInDollars]);
//        }
        
        NSLog(@"The value of the portfolio is %.2f", portfolio.calcTotalValue);
       
        NSArray *topThree = [portfolio topThreeHoldings];
        NSLog(@"The value of the top 3 holdings:\n");
        for (BNRStockHolding *s in topThree) {
            NSLog(@"The value of Stock %@ is currently %.2f",
                  s, s.valueInDollars );
        }
        
    }
    return 0;
}

