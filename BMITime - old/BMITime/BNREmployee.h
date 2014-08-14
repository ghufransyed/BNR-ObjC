//
//  BNREmployee.h
//  BMITime
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int  employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double) yearsOfEmployment;
- (void) addAsset:(BNRAsset *)a;
- (unsigned int) valueOfAssets;

- (void) removeAsset;



@end
