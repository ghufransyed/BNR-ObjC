//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Ghufran Syed on 8/16/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *BNRDocPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
@property (nonatomic) NSMutableArray *tasks;

- (void) addTask:(id)sender;



@end
