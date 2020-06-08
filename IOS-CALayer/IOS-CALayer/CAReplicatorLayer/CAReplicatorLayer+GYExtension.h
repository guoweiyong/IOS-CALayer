//
//  CAReplicatorLayer+GYExtension.h
//  IOS-CALayer
//
//  Created by yunyi on 2020/5/28.
//  Copyright © 2020 yunyi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAReplicatorLayer (GYExtension)

+ (CAReplicatorLayer *)replicatorlayerWithFrame:(CGRect)frame path:(UIBezierPath *)path animationTime:(CFTimeInterval)time delayTime:(CFTimeInterval)delayTime;
@end

NS_ASSUME_NONNULL_END
