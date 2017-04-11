//
//  ZPXWebViewController.m
//  ZPXQRCodeDemo
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import "ZPXWebViewController.h"
#import "ZPXWebView.h"
@interface ZPXWebViewController ()

@end

@implementation ZPXWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
    ZPXWebView *webView = [[ZPXWebView alloc]initWithFrame:self.view.bounds];
    webView.progressViewColor = [UIColor redColor];
    webView.navigationItemTitle = @"标题";
    webView.isNavigationBarOrTranslucent = YES;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://delta.qrcreate.h5.ersansan.cn/maker/#/"]]];
     [self.view addSubview:webView];

    
   
    
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
