//
//  PTFakeTouchDemoTests.m
//  PTFakeTouchDemoTests
//
//  Created by zhenyu on 2022/8/6.
//  Copyright © 2022 In8. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <PTFakeTouch/PTFakeTouch.h>

@interface PTFakeTouchDemoTests : XCTestCase

@end

@implementation PTFakeTouchDemoTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    NSInteger pointId = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(10,200) withTouchPhase:UITouchPhaseBegan];
//    NSInteger pointId2 = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(300,200) withTouchPhase:UITouchPhaseBegan];

    [PTFakeTouch fakeTouchId:pointId AtPoint:CGPointMake(100,200) withTouchPhase:UITouchPhaseMoved];
    [PTFakeTouch fakeTouchId:pointId AtPoint:CGPointMake(100,200) withTouchPhase:UITouchPhaseEnded];
}


@end
