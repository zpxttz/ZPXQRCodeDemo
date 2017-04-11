//
//  ZPXQRCodeTool.h
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import <AVFoundation/AVFoundation.h>
#import "ZPXQRCodeScanningVC.h"


@interface ZPXQRCodeTool : NSObject


/** 生成一张普通的二维码 */
+ (UIImage *)ZPXQRCode_generateWithDefaultQRCodeData:(NSString *)data imageViewWidth:(CGFloat)imageViewWidth;

/** 生成一张带有logo的二维码（logoScaleToSuperView：相对于父视图的缩放比取值范围0-1；0，不显示，1，代表与父视图大小相同） */
+ (UIImage *)ZPXQRCode_generateWithLogoQRCodeData:(NSString *)data logoImageName:(NSString *)logoImageName logoScaleToSuperView:(CGFloat)logoScaleToSuperView;

/** 生成一张带有网络图片的二维码（logoScaleToSuperView：相对于父视图的缩放比取值范围0-1；0，不显示，1，代表与父视图大小相同） */
+ (UIImage *)ZPXQRCode_generateWithLogoQRCodeData:(NSString *)data imageUrlString:(NSString *)imageUrlString logoScaleToSuperView:(CGFloat)logoScaleToSuperView;

/** 生成一张彩色的二维码 */
+ (UIImage *)ZPXQRCode_generateWithColorQRCodeData:(NSString *)data backgroundColor:(CIColor *)backgroundColor mainColor:(CIColor *)mainColor;

/** 检测有没有打开相机权限 */
+(void)scanningQRCodePermissionSuccess:(void(^)())success Failure:(void(^)(NSString *failStr))failure;

@end
