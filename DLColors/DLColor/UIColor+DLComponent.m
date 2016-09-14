//
//  UIColor+DLComponent.m
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "UIColor+DLComponent.h"

@implementation UIColor (DLComponent)

- (CGFloat)dl_red
{
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    return c[0];
}

- (CGFloat)dl_green
{
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    if ([self colorSpaceModel] == kCGColorSpaceModelMonochrome) {
        return c[0];
    }
    return c[1];
}

- (CGFloat)dl_blue
{
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    if ([self colorSpaceModel] == kCGColorSpaceModelMonochrome) {
        return c[0];
    }
    return c[2];
}

- (CGFloat)dl_alpha
{
    const CGFloat *c = CGColorGetComponents(self.CGColor);
    return c[CGColorGetNumberOfComponents(self.CGColor)-1];
}

- (NSString *)dl_RGBADescription
{
    CGFloat r = [self dl_red] * 255.0;
    CGFloat g = [self dl_green] * 255.0;
    CGFloat b = [self dl_blue] * 255.0;
    CGFloat alpha = [self dl_alpha];
   
    return [NSString stringWithFormat:@"Red:%.0f, Green:%.0f, Blue:%.0f, Alpha:%.0f", r, g, b, alpha];
}

- (CGColorSpaceModel)colorSpaceModel
{
    return CGColorSpaceGetModel(CGColorGetColorSpace(self.CGColor));
}

@end
