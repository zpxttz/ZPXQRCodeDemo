//
//  generateQRCodeVC.m
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/31.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import "generateQRCodeVC.h"
#import "ZPXQRCodeTool.h"
@interface generateQRCodeVC ()
{
    UIImageView *_IMG;
}
@end

@implementation generateQRCodeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _IMG = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    
    [self.view addSubview:_IMG];
    
    switch (self.flag) {
        case 1:
        {
            
            _IMG.image = [ZPXQRCodeTool ZPXQRCode_generateWithDefaultQRCodeData:@"http://www.baidu.com" imageViewWidth:200];
        }
            break;
        case 2:
        {
            _IMG.image = [ZPXQRCodeTool ZPXQRCode_generateWithLogoQRCodeData:@"http://www.qq.com" logoImageName:@"马刺队标.jpg" logoScaleToSuperView:0.3];
        }
            break;
        case 3:
        {
            _IMG.image = [ZPXQRCodeTool ZPXQRCode_generateWithColorQRCodeData:@"http://www.qq.com" backgroundColor:[CIColor colorWithRed:0.2 green:0.4 blue:0.8] mainColor:[CIColor colorWithRed:0.9 green:0.4 blue:0.1]];
        }
            break;
        case 4:{
            _IMG.image = [ZPXQRCodeTool ZPXQRCode_generateWithLogoQRCodeData:@"http://www.baidu.com" imageUrlString:@"http://img.sootuu.com/vector/2007-07-01/065/1/0161.gif" logoScaleToSuperView:0.2];
        }
            break;
            
        default:
            break;
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
