//
//  CAGradientLayer+GYExtension.h
//  IOS-CALayer
//
//  Created by yunyi on 2020/5/28.
//  Copyright © 2020 yunyi. All rights reserved.
//




#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAGradientLayer (GYExtension)

/// 创建一个渐变被景色
+ (CAGradientLayer *)gradientLayerWithColors:(NSArray *)colors locations:(NSArray *)locations start:(CGPoint)start end:(CGPoint)end frame:(CGRect)frame;
@end

NS_ASSUME_NONNULL_END
