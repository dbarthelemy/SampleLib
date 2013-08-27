//
//  SampleAppTests.m
//  SampleAppTests
//
//  Created by David Barthelemy on 18/08/13.
//  Copyright (c) 2013 David Barthelemy, iMakeit4U. All rights reserved.
//

#import "SampleAppTests.h"
#import "SampleLib.h"

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

- (void)testAlgo
{
    NSArray *input1 = @[@9, @2, @3, @4, @5, @6, @7, @8, @18, @0]; // Output: 8 ( j = 8, i = 0)
    int result1 = [self.myLibrarie maxDistanceInArray:input1];
    STAssertEquals(result1, 8, @"Input 1 failed");
    
    NSArray *input2 = @[@1, @2, @3, @4, @5, @6]; // Output: 5 (j = 5, i = 0)
    int result2 = [self.myLibrarie maxDistanceInArray:input2];
    STAssertEquals(result2, 5, @"Input 2 failed");

    NSArray *input3 = @[@20, @20, @18, @20]; // Output: 1 ( j = 3, i = 2)
    int result3 = [self.myLibrarie maxDistanceInArray:input3];
    STAssertEquals(result3, 1, @"Input 3 failed");

    NSArray *input4 = @[@20, @20, @20, @20, @20, @20, @20, @20, @18, @20]; // Output: 1 ( j = 9, i = 8)
    int result4 = [self.myLibrarie maxDistanceInArray:input4];
    STAssertEquals(result4, 1, @"Input 4 failed");

    NSArray *input5 = @[@20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @20, @18, @20]; // Output: 1 ( j = 19, i = 18)
    int result5 = [self.myLibrarie maxDistanceInArray:input5];
    STAssertEquals(result5, 1, @"Input 5 failed");
}

- (void)testZZZ
{
    NSLog(@"Done");
    STAssertTrue(YES, @"Last test might not be executed");
}

@end
