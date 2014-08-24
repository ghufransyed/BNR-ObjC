//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Ghufran Syed on 8/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
- (instancetype) initWithProductName:(NSString *)pn
                      firstOwnerName:(NSString *)n;
- (void) addOwnerName:(NSString *) n;
- (void) removeOwnerName:(NSString *) n;

@end
