//
//  BNRPerson.h
//  BMITime
//
//  Created by Ghufran Syed on 7/31/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
    float _heightInMeters;
    int _weightInKilos;
}

- (float) heightInMeters;
- (void) setHeightInMeters:(float) h;
- (int) weightInKilos;
- (void) setWeightInKilos:(int) w;

- (float) bodyMassIndex;

@end
