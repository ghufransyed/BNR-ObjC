//
//  BNRAppliance.h
//  Appliances
//
//  Created by Ghufran Syed on 8/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic) int  voltage;
@property (nonatomic, copy) NSString *productName;
- (instancetype) initWithProductName:(NSString *) pn;

@end
