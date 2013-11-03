//
//  RandomSequence_Tests.m
//  RandomSequence Tests
//
//  Created by Sergey Dunets on 03.11.13.
//
//

#import <XCTest/XCTest.h>
#import "RandomSequence.h"

@interface RandomSequence_Tests : XCTestCase

@end

@implementation RandomSequence_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRange
{
    RandomSequence *randSequence = [RandomSequence defaultSequence];
    NSInteger randValue = 0;

    // Assume that 100000 times is enough to generate all possible values in a given range
    for (NSInteger i = 0; i < 100000; i++)
    {
        randValue = [randSequence nextIntegerInRange:NSMakeRange(1, 100)];
        XCTAssert(randValue >= 1 && randValue <= 100, @"Range error: %ld", (long)randValue);
    }
}

@end
