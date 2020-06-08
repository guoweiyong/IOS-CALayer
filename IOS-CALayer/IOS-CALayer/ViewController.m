//
//  ViewController.m
//  IOS-CALayer
//
//  Created by yunyi on 2020/5/28.
//  Copyright © 2020 yunyi. All rights reserved.
//

#import "ViewController.h"
#import "CAGradientLayer+GYExtension.h"
#import "CAReplicatorLayer+GYExtension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self replactorLayerAnimation];
}

- (void)replactorLayerAnimation {
    
    CAReplicatorLayer *animationLayer = [CAReplicatorLayer replicatorlayerWithFrame:CGRectMake(0, 0, self.testView.bounds.size.width, 20) path:[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 20, 20)] animationTime:2.0 delayTime:0.5];
    [self.testView.layer addSublayer:animationLayer];
}

/// 设置view的背景渐变色
- (void)setViewColor {
    //1.设置view的背景渐变色
    NSArray *colors = @[(id)[UIColor redColor].CGColor, (id)[UIColor orangeColor].CGColor];
    NSArray *locations = @[@0.1,@0.6];
    CAGradientLayer *gradinetLayer = [CAGradientLayer gradientLayerWithColors:colors locations:locations start:CGPointMake(0, 0) end:CGPointMake(1.0, 0) frame:self.testView.bounds];
    [self.testView.layer addSublayer:gradinetLayer];
}

@end
