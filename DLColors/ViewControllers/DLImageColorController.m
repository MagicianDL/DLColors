//
//  DLImageColorController.m
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "DLImageColorController.h"
#import "UIColor+DLComponent.h"
#import "UIColor+DLHex.h"
#import "UIImage+DLColor.h"
#import "UIColor+DLGradient.h"

@interface DLImageColorController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation DLImageColorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _label.text = @"图片上点击移动可以获取点击位置的颜色，由于位置相对于图片不准确，所以颜色可能不匹配";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIImage *image = [UIImage imageNamed:@"colors"];
    CGPoint touchPoint = [[touches anyObject] locationInView:_imageView];
    CGSize imageViewSize = _imageView.frame.size;
    CGSize imageSize = image.size;
    CGPoint pointInImage = CGPointMake((touchPoint.x / imageViewSize.width) * imageSize.width, (touchPoint.y / imageViewSize.height) * imageSize.height);
    UIColor *color = [_imageView.image dl_colorAtPoint:pointInImage];
    if (color) {
        NSString *description = [NSString stringWithFormat:@"\n%@的颜色\nHex: %@\nRGBA: %@", NSStringFromCGPoint(pointInImage), [color dl_HEXString], [color dl_RGBADescription]];
        _label.text = description;
        self.view.backgroundColor = color;
    }}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIImage *image = [UIImage imageNamed:@"colors"];
    CGPoint touchPoint = [[touches anyObject] locationInView:_imageView];
    CGSize imageViewSize = _imageView.frame.size;
    CGSize imageSize = image.size;
    CGPoint pointInImage = CGPointMake((touchPoint.x / imageViewSize.width) * imageSize.width, (touchPoint.y / imageViewSize.height) * imageSize.height);
    UIColor *color = [_imageView.image dl_colorAtPoint:pointInImage];
    if (color) {
        NSString *description = [NSString stringWithFormat:@"\n%@的颜色\nHex: %@\nRGBA: %@", NSStringFromCGPoint(pointInImage), [color dl_HEXString], [color dl_RGBADescription]];
        _label.text = description;
        self.view.backgroundColor = color;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
