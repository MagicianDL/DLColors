//
//  UIImage+DLColor.h
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//
//  用图片中获取颜色

#import <UIKit/UIKit.h>

@interface UIImage (DLColor)

/**
 *  某一点的颜色
 *
 *  @param point 某一点
 *
 *  @return UIColor
 */
- (UIColor *)dl_colorAtPoint:(CGPoint )point;

/**
 *  获取某一像素的颜色
 *
 *  @param point 某一像素
 *
 *  @return UIColor
 */
- (UIColor *)dl_colorAtPixel:(CGPoint)point;

/**
 *  判断图片是否有透明度通道
 *
 *  @return YES / NO
 */
- (BOOL)dl_hasAlphaChannel;

@end
