//
//  CAGradientLayer+GYExtension.m
//  IOS-CALayer
//
//  Created by yunyi on 2020/5/28.
//  Copyright © 2020 yunyi. All rights reserved.
//

#import "CAGradientLayer+GYExtension.h"

@implementation CAGradientLayer (GYExtension)
+ (CAGradientLayer *)gradientLayerWithColors:(NSArray *)colors locations:(NSArray *)locations start:(CGPoint)start end:(CGPoint)end frame:(CGRect)frame {
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = colors;
    gradientLayer.locations = locations;
    gradientLayer.startPoint = start;
    gradientLayer.endPoint = end;
    gradientLayer.frame = frame;
    
    return gradientLayer;
}
@end
