//
//  UIColor+DLComponent.h
//  DLColors
//
//  Created by Dalang on 16/9/12.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DLComponent)

- (CGFloat)dl_red;

- (CGFloat)dl_green;

- (CGFloat)dl_blue;

- (CGFloat)dl_alpha;

- (NSString *)dl_RGBADescription;

@end
