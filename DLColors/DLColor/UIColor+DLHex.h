//
//  UIColor+DLHex.h
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//
//  十六进制取色

#import <UIKit/UIKit.h>

@interface UIColor (DLHex)

+ (UIColor *)dl_colorWithHex:(UInt32)hex;

+ (UIColor *)dl_colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

+ (UIColor *)dl_colorWithHexString:(NSString *)hexString;

- (NSString *)dl_HEXString;

@end
