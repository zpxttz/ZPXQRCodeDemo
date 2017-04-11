//
//  ZPXWebView.h
//  ZPXWebView
//
//  Created by zpx on 2017/3/30.
//  Copyright © 2017年 zpx. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ZPXWebView;

@protocol ZPXWebDelegate <NSObject>

@optional
/** 页面开始加载时调用 */
- (void)webViewDidStartLoad:(ZPXWebView *)webView;
/** 内容开始返回时调用 */
- (void)webView:(ZPXWebView *)webView didCommitWithURL:(NSURL *)url;
/** 页面加载完成之后调用 */
- (void)webView:(ZPXWebView *)webView didFailLoadWithError:(NSError *)error;
/** 页面加载失败时调用 */
- (void)webView:(ZPXWebView *)webView didFinishLoadWithURL:(NSURL *)url;
@end


@interface ZPXWebView : UIView



/** ZPXWebDelegate */
@property (nonatomic, weak) id<ZPXWebDelegate> zpxWebDelegate;
/** 进度条颜色(默认蓝色) */
@property (nonatomic, strong) UIColor *progressViewColor;
/** 导航栏标题 */
@property (nonatomic, copy) NSString *navigationItemTitle;
/** 导航栏存在且有穿透效果(默认导航栏存在且有穿透效果) */
@property (nonatomic, assign) BOOL isNavigationBarOrTranslucent;

/** 类方法创建 ZPXWeb */
+ (instancetype)webViewWithFrame:(CGRect)frame;
/** 加载 web */
- (void)loadRequest:(NSURLRequest *)request;
/** 加载 HTML */
- (void)loadHTMLString:(NSString *)HTMLString;
/** 刷新数据 */
- (void)reloadData;

@end
