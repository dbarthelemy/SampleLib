//
//  SampleLib.m
//  SampleLib
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import "SampleLib.h"

@implementation SampleLib


#pragma mark - Public methods

- (NSString *)firstName
{
    return @"David";
}

- (NSString *)lastName
{
    return @"Barthélémy";
}

- (UIImage *)picture
{
    return [UIImage imageNamed:@"iMakeit4U-256"];
}

@end
