//
//  CustomDrawView.m
//  TSAnchorPointDemo
//
//  Created by huangjianwu on 2016/12/30.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "CustomDrawView.h"

@implementation CustomDrawView



- (void)drawRect:(CGRect)rect
{
    UIImage *uiImage = [UIImage imageNamed:@"loading"];
    float width = uiImage.size.width;
    float height = uiImage.size.height;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawImage(context, CGRectMake(0, 0, width, height), uiImage.CGImage);
}

//- (void)drawRect:(CGRect)rect
//{
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    [self drawLineWithContext:context];
//}


- (void)drawLineWithContext:(CGContextRef)context {
    //设置线条起点和终点的样式为圆角
    CGContextSetLineCap(context, kCGLineCapRound);
    //设置线条的转角的样式为圆角
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    //设置线条的宽度
    CGContextSetLineWidth(context, 3);
    
    //调用OC的方法设置绘图的颜色
    //    [[UIColor purpleColor] setFill];
    //    [[UIColor blueColor] setStroke];
    //调用OC的方法设置绘图颜色(同时设置了实心和空心)
    [[UIColor colorWithRed:0.3 green:0.4 blue:0.5 alpha:1.0] set];
    // 绘图(绘制直线), 保存绘图信息
    // 设置起点
    CGContextMoveToPoint(context, 0, 2);
    
    //沿途增加绘制点（addLinePoint要在开始和重点之间添加，否则会重新开启另一条绘制。）
    CGContextAddLineToPoint(context, self.bounds.size.width/3, self.bounds.size.height/2);
    CGContextAddLineToPoint(context, self.bounds.size.width*(4/5.0), self.bounds.size.height/2 - 60);
    CGContextAddLineToPoint(context, 20, self.bounds.size.height/2 + 50);
    CGContextAddLineToPoint(context, 25, self.bounds.size.height/2);
    
    //设置终点
    CGContextAddLineToPoint(context, self.bounds.size.width, self.bounds.size.height/2);
    
    //渲染 空心
    CGContextStrokePath(context);
    //渲染 实心
    //    CGContextFillPath(context);
}

@end
