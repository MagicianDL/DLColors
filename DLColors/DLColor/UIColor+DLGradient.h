//
//  UIColor+DLGradient.h
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DLGradient)

/**
 *  获取渐变色
 *
 *  @param fromColor     起始颜色
 *  @param toColor       结束颜色
 *  @param height 渐变的高度
 *
 *  @return 渐变色
 */
+ (UIColor *)dl_gradientColorWithFromColor:(UIColor*)fromColor toColor:(UIColor*)toColor height:(CGFloat)height;

/**
 *  获取渐变色
 *
 *  @param colors 渐变色数组
 *  @param height 渐变的高度
 *
 *  @return 渐变色
 */
+ (UIColor *)dl_gradientColorWithColors:(NSArray *)colors Height:(CGFloat)height;


@end
