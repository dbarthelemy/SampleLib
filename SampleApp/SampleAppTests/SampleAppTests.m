//
//  SampleAppTests.m
//  SampleAppTests
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import "SampleAppTests.h"
#import "SampleLib.h"
#import "SampleLibC.h"

@interface SampleAppTests ()

@property (nonatomic, retain) SampleLib *myLibrarie;

@end


@implementation SampleAppTests

+ (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

+ (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    self.myLibrarie = [[SampleLib alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    self.myLibrarie = nil;
    
    [super tearDown];
}

- (void)testFirstName
{
    STAssertEqualObjects(self.myLibrarie.firstName, @"David", @"Unexpected first name");
}

- (void)testLastName
{
    STAssertEqualObjects(self.myLibrarie.lastName, @"Barthélémy", @"Unexpected last name");
}

- (void)testPicture
{
    STAssertNotNil(self.myLibrarie.picture, @"Undefined picture");
}

- (void)testAlgoWrapper
{
    NSArray *input1 = @[@9, @2, @3, @4, @5, @6, @7, @8, @18, @0]; // Output: 8 ( j = 8, i = 0)
    int result1 = [self.myLibrarie maxDistanceInArray:input1];
    STAssertEquals(result1, 8, @"Input 1 failed");    
}

- (void)testAlgo
{
    int input1[] = {9, 2, 3, 4, 5, 6, 7, 8, 18, 0}; // Output: 8 ( j = 8, i = 0)
    Result result1 = findMaxDistance(input1, ARRAYSIZE(input1));
    STAssertEquals(result1.d, 8, @"Input 1 failed");
    
    int input2[] = {1, 2, 3, 4, 5, 6}; // Output: 5 (j = 5, i = 0)
    Result result2 = findMaxDistance(input2, ARRAYSIZE(input2));
    STAssertEquals(result2.d, 5, @"Input 2 failed");
    
    int input3[] = {20, 20, 18, 20}; // Output: 1 ( j = 3, i = 2)
    Result result3 = findMaxDistance(input3, ARRAYSIZE(input3));
    STAssertEquals(result3.d, 1, @"Input 3 failed");
    
    int input4[] = {20, 20, 20, 20, 20, 20, 20, 20, 18, 20}; // Output: 1 ( j = 9, i = 8)
    Result result4 = findMaxDistance(input4, ARRAYSIZE(input4));
    STAssertEquals(result4.d, 1, @"Input 4 failed");
    
    int input5[] = {20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 18, 20}; // Output: 1 ( j = 19, i = 18)
    Result result5 = findMaxDistance(input5, ARRAYSIZE(input5));
    STAssertEquals(result5.d, 1, @"Input 5 failed");
}

- (void)testZZZ
{
    NSLog(@"Done");
    STAssertTrue(YES, @"Last test might not be executed");
}

@end
