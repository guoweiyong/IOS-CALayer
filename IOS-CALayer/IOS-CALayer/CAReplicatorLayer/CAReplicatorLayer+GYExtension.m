//
//  CAReplicatorLayer+GYExtension.m
//  IOS-CALayer
//
//  Created by yunyi on 2020/5/28.
//  Copyright © 2020 yunyi. All rights reserved.
//

#import "CAReplicatorLayer+GYExtension.h"


@implementation CAReplicatorLayer (GYExtension)

+ (CAReplicatorLayer *)replicatorlayerWithFrame:(CGRect)frame path:(UIBezierPath *)path animationTime:(CFTimeInterval)time delayTime:(CFTimeInterval)delayTime {
    CAShapeLayer * originalLayer = [CAShapeLayer layer];
    originalLayer.frame = frame;
    originalLayer.path = path.CGPath;
    //路径填充颜色
    originalLayer.fillColor = [UIColor orangeColor].CGColor;
    [originalLayer addAnimation:[self animationForScaleSmall:time] forKey:@""];
    
    //需要添加动画
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.instanceCount = 4;
    replicatorLayer.instanceDelay = delayTime;
    replicatorLayer.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    //给CAReplicatorLayer对象的子层添加转换规则 这里决定了子层的布局
    replicatorLayer.instanceTransform = CATransform3DMakeTranslation(25, 0, 0);
    [replicatorLayer addSublayer:originalLayer];
    
    
    return replicatorLayer;
}

+ (CABasicAnimation *)animationForScaleSmall:(CFTimeInterval)time {
    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    basicAnimation.duration = time;
//    basicAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, 1, 1, 0)];
//    basicAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DScale(CATransform3DIdentity, 0.5, 0.5, 0)];
    basicAnimation.fromValue = @1.0;
    basicAnimation.toValue = @0.6;
    basicAnimation.repeatCount = HUGE;
    basicAnimation.removedOnCompletion = false;
    basicAnimation.autoreverses = true;
    
    return basicAnimation;
}

@end
