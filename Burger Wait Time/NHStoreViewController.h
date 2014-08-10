//
//  NHStoreViewController.h
//  Burger Wait Time
//
//  Created by mrhsu on 8/9/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHStoreViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *currentStoreWaitTimeLabel;

@property (strong, nonatomic) IBOutlet UILabel *currentDriveThruLabel;



@property (strong, nonatomic) IBOutlet UITextField *reportStoreWaitTimeField;

@property (strong, nonatomic) IBOutlet UITextField *reportDriveThruTimeField;


- (IBAction)submitReportButton:(UIButton *)sender;



@end
