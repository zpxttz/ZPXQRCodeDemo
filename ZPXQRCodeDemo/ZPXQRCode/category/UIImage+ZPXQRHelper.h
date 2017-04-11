//
//  UIImage+ZPXQRHelper.h
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZPXQRHelper)


/** 返回一张不超过屏幕尺寸的 image */
+ (UIImage *)imageSizeWithScreenImage:(UIImage *)image;


@end
