//
//  UIColor+DLHex.m
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "UIColor+DLHex.h"

CGFloat dl_colorComponentFrom(NSString *string, NSUInteger start, NSUInteger length)
{
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}


@implementation UIColor (DLHex)

+ (UIColor *)dl_colorWithHex:(UInt32)hex
{
    return [UIColor dl_colorWithHex:hex andAlpha:1];
}

+ (UIColor *)dl_colorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha{
    
    return [UIColor colorWithRed:((hex >> 16) & 0xFF) / 255.0
                           green:((hex >> 8) & 0xFF) / 255.0
                            blue:(hex & 0xFF) / 255.0
                           alpha:alpha];
}

+ (UIColor *)dl_colorWithHexString:(NSString *)hexString
{
    CGFloat alpha, red, blue, green;
    
    NSString *colorString = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red   = dl_colorComponentFrom(colorString, 0, 1);
            green = dl_colorComponentFrom(colorString, 1, 1);
            blue  = dl_colorComponentFrom(colorString, 2, 1);
            break;
            
        case 4: // #ARGB
            alpha = dl_colorComponentFrom(colorString, 0, 1);
            red   = dl_colorComponentFrom(colorString, 1, 1);
            green = dl_colorComponentFrom(colorString, 2, 1);
            blue  = dl_colorComponentFrom(colorString, 3, 1);
            break;
            
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = dl_colorComponentFrom(colorString, 0, 2);
            green = dl_colorComponentFrom(colorString, 2, 2);
            blue  = dl_colorComponentFrom(colorString, 4, 2);
            break;
            
        case 8: // #AARRGGBB
            alpha = dl_colorComponentFrom(colorString, 0, 2);
            red   = dl_colorComponentFrom(colorString, 2, 2);
            green = dl_colorComponentFrom(colorString, 4, 2);
            blue  = dl_colorComponentFrom(colorString, 6, 2);
            break;
            
        default:
            return nil;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

- (NSString *)dl_HEXString
{
    UIColor *color = self;
    if (CGColorGetNumberOfComponents(color.CGColor) < 4) {
        const CGFloat *components = CGColorGetComponents(color.CGColor);
        color = [UIColor colorWithRed:components[0]
                                green:components[0]
                                 blue:components[0]
                                alpha:components[1]];
    }
    if (CGColorSpaceGetModel(CGColorGetColorSpace(color.CGColor)) != kCGColorSpaceModelRGB) {
        return [NSString stringWithFormat:@"#FFFFFF"];
    }
    return [NSString stringWithFormat:@"#%02X%02X%02X", (int)((CGColorGetComponents(color.CGColor))[0]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[1]*255.0),
            (int)((CGColorGetComponents(color.CGColor))[2]*255.0)];
}


@end
