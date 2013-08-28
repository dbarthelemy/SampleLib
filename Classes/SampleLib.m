//
//  SampleLib.m
//  SampleLib
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import "SampleLib.h"
#import "SampleLibC.h"

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
    return [UIImage imageNamed:@"iMakeit4U.png"];
}

- (NSInteger)maxDistanceInArray:(NSArray *)array
{
    // Objective-C to C array conversion
    int *cArray;
    cArray = malloc(sizeof(int) * [array count]);
    for (int idx = 0; idx < [array count]; idx++) {
        cArray[idx] = [array[idx] intValue];
    }
    
    // C Algo execution
    Result result = findMaxDistance(cArray, [array count]);

    // C array release
    free(cArray);
    
    return result.d;
}

@end
