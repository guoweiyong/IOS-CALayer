//
//  CAShapeLayerTools.m
//  oc_demo
//
//  Created by yunyi on 2020/5/7.
//  Copyright © 2020 yunyi. All rights reserved.
//

#import "CAShapeLayerTools.h"

@implementation CAShapeLayerTools

- (CAShapeLayer *)creatShapelayer:(CGRect)frame {
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    //设置线宽
    shapeLayer.lineWidth = 10;
    //设置线条颜色
    shapeLayer.strokeColor = UIColor.orangeColor.CGColor;
    //设置形状的填充颜色
    shapeLayer.fillColor = UIColor.clearColor.CGColor;
    
    //设置形状
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:0];
    shapeLayer.path = bezierPath.CGPath;
    
    //设置path的端点样式
    /**

     CA_EXTERN CAShapeLayerLineCap const kCALineCapButt 无端点
         
     CA_EXTERN CAShapeLayerLineCap const kCALineCapRound 圆形
         
     CA_EXTERN CAShapeLayerLineCap const kCALineCapSquare 方形
         
     */
    shapeLayer.lineCap = kCALineCapRound;
    
    //设置path拐角样式
    /**
     CA_EXTERN CAShapeLayerLineJoin const kCALineJoinMiter 尖角
         
     CA_EXTERN CAShapeLayerLineJoin const kCALineJoinRound 圆角
         
     CA_EXTERN CAShapeLayerLineJoin const kCALineJoinBevel 缺角
         
     */
    shapeLayer.lineJoin = kCALineJoinRound;
    
    return shapeLayer;
}
@end
