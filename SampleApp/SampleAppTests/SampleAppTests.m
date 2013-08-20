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

- (void)testZZZ
{
    NSLog(@"Done");
    STAssertTrue(YES, @"Last test might not be executed");
}

@end
