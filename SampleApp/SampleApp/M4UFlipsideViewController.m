//
//  M4UFlipsideViewController.m
//  SampleApp
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import "M4UFlipsideViewController.h"
#import "SampleLib.h"

@interface M4UFlipsideViewController ()
@property (retain, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (retain, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (retain, nonatomic) IBOutlet UIImageView *pictureImageView;

@property (retain, nonatomic) SampleLib *mySampleLib;

@end

@implementation M4UFlipsideViewController

- (void)awakeFromNib
{
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 480.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mySampleLib = [[[SampleLib alloc] init] autorelease];
    self.firstNameLabel.text = self.mySampleLib.firstName;
    self.lastNameLabel.text = self.mySampleLib.lastName;
    self.pictureImageView.image = self.mySampleLib.picture;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

- (void)dealloc {
    [_firstNameLabel release];
    [_lastNameLabel release];
    [_pictureImageView release];
    [_mySampleLib release];
    [super dealloc];
}
@end
