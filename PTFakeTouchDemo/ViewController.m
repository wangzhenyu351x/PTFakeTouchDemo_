//
//  ViewController.m
//  PTFakeTouchDemo
//
//  Created by In8 on 2017/12/2.
//  Copyright © 2017年 In8. All rights reserved.
//

#import "ViewController.h"
#import <PTFakeTouch/PTFakeTouch.h>
@interface ViewController () <UIGestureRecognizerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:gesture];


//    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinch:)];
//    [self.view addGestureRecognizer:pinch];
    gesture.delegate = self;


}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    NSInteger pointId = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(10,200) withTouchPhase:UITouchPhaseBegan];
//    NSInteger pointId2 = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(300,200) withTouchPhase:UITouchPhaseBegan];

    [PTFakeTouch fakeTouchId:pointId AtPoint:CGPointMake(100,200) withTouchPhase:UITouchPhaseMoved];
    [PTFakeTouch fakeTouchId:pointId AtPoint:CGPointMake(100,200) withTouchPhase:UITouchPhaseEnded];


//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{



//        [PTFakeTouch fakeTouchId:pointId2 AtPoint:CGPointMake(200,200) withTouchPhase:UITouchPhaseMoved];


//        [PTFakeTouch fakeTouchId:pointId2 AtPoint:CGPointMake(200,200) withTouchPhase:UITouchPhaseEnded];

//    });

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapButtonClicked:(id)sender {

}

- (IBAction)longPressButtonClicked:(id)sender {

}

- (void)swipe:(UISwipeGestureRecognizer *)swipe {
    NSLog(@"%@",swipe);
}

- (void)pan:(UIPanGestureRecognizer *)panGes {
    NSLog(@"%@ %d",panGes, panGes.state);
}

- (void)pinch:(UIPinchGestureRecognizer *)pinchGes {
    NSLog(@"%@ %.2f",pinchGes,pinchGes.scale);
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return NO;
}
@end
