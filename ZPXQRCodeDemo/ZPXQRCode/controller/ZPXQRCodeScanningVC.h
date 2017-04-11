//
//  ZPXQRCodeScanningVC.h
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ZPXQRCodeScanningVCReslutBlock) (NSString *QRCodeString);

@interface ZPXQRCodeScanningVC : UIViewController




@property (nonatomic, copy) ZPXQRCodeScanningVCReslutBlock block;

- (void)getQRCodeStrBlock:(ZPXQRCodeScanningVCReslutBlock) codeBlock;

@end
