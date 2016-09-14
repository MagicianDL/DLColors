//
//  UIColor+DLGradient.m
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "UIColor+DLGradient.h"

@implementation UIColor (DLGradient)

+ (UIColor *)dl_gradientColorWithFromColor:(UIColor*)fromColor toColor:(UIColor*)toColor height:(CGFloat)height
{
    CGSize size = CGSizeMake(1, height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    
    NSArray* colors = [NSArray arrayWithObjects:(id)fromColor.CGColor, (id)toColor.CGColor, nil];
    CGGradientRef gradient = CGGradientCreateWithColors(colorspace, (__bridge CFArrayRef)colors, NULL);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorspace);
    UIGraphicsEndImageContext();
    
    return [UIColor colorWithPatternImage:image];
}

+ (UIColor *)dl_gradientColorWithColors:(NSArray *)colors Height:(CGFloat)height
{
    CGSize size = CGSizeMake(1, height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    
    NSMutableArray *colorArray = [NSMutableArray array];
    for (UIColor *color in colors) {
        [colorArray addObject:(id)color.CGColor];
    }
    
    CGGradientRef gradient = CGGradientCreateWithColors(colorspace, (__bridge CFArrayRef)colorArray, NULL);
    
    CGFloat subHeight = height / colors.count;
    for (CGFloat y = 0; y < colors.count; y++) {
        CGContextDrawLinearGradient(context, gradient, CGPointMake(subHeight * y, 0), CGPointMake(subHeight * (y + 1), subHeight), 0);
    }
        
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorspace);
    UIGraphicsEndImageContext();
    
    return [UIColor colorWithPatternImage:image];
}

@end
