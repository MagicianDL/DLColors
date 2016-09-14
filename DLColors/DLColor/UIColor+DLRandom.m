//
//  UIColor+DLRandom.m
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "UIColor+DLRandom.h"

@implementation UIColor (DLRandom)

+ (UIColor *)dl_randomColor
{
    CGFloat r = arc4random() % 255 / 255.0f;
    CGFloat g = arc4random() % 255 / 255.0f;
    CGFloat b = arc4random() % 255 / 255.0f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0f];
}

@end
