//
//  ViewController.m
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import "ViewController.h"


#import "ZPXQRCodeTool.h"
#import "ZPXWebViewController.h"
#import "generateQRCodeVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (IBAction)jump:(id)sender {
    [ZPXQRCodeTool scanningQRCodePermissionSuccess:^{
        ZPXQRCodeScanningVC *vc = [[ZPXQRCodeScanningVC alloc]init];
        [vc getQRCodeStrBlock:^(NSString *QRCodeString) {
            
            if([QRCodeString hasPrefix:@"http"]){
                //网址
            }else{
                //字符串信息
            }
            
            NSLog(@"%@",QRCodeString);
            
        }];

        
        [self.navigationController pushViewController:vc animated:YES];
    } Failure:^(NSString *failStr) {
        
        NSLog(@"%@",failStr);
        
    }];


//    ZPXWebViewController *vc = [[ZPXWebViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)jumpQRCodeVC:(id)sender {
    generateQRCodeVC *vc = [[generateQRCodeVC alloc]init];
    vc.flag = 4;
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
