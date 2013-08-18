//
//  M4UFlipsideViewController.h
//  SampleApp
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import <UIKit/UIKit.h>

@class M4UFlipsideViewController;

@protocol M4UFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(M4UFlipsideViewController *)controller;
@end

@interface M4UFlipsideViewController : UIViewController

@property (assign, nonatomic) id <M4UFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
