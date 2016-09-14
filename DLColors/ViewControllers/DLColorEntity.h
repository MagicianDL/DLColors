//
//  DLColorEntity.h
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const kDLColorsKey;
extern NSString *const kDLColorClassificationKey;

@interface DLColorEntity : NSObject

@property (nonatomic, readonly, copy) NSString *colorName;

@property (nonatomic, readonly, copy) NSString *chinessDescription;

@property (nonatomic, readonly, strong) UIColor *color;

- (instancetype)initWithColorName:(NSString *)name chineseDescription:(NSString *)description color:(UIColor *)color;

+ (NSDictionary *)dataSourceForColor;


@end
