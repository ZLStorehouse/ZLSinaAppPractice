//
//  ZLSinaAuthorizationView.m
//  SinaAppPractice
//
//  Created by mac on 16/6/15.
//  Copyright © 2016年 zhiYou. All rights reserved.
//


#define WS(ws) __weak typeof(self)ws=self
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
#import "ZLSinaAuthorizationView.h"
#import <MBProgressHUD.h>


@interface ZLSinaAuthorizationView ()<UIWebViewDelegate>
@property(weak,nonatomic)UIWebView *webView;
@property(weak,nonatomic)MBProgressHUD *HUD;
@end
@implementation ZLSinaAuthorizationView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
    }
    return self;
}

//TODO:添加webView
- (void)addWebViewWithRequest:(NSURLRequest *)request{
    WS(weakSelf);
    if (!self.webView) {
        UIWebView *webView=[[UIWebView alloc]init];
        [webView setDelegate:self];
        [webView loadRequest:request];
        [self addSubview:webView];
        self.webView=webView;
        [webView makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(weakSelf);
        }];
        [self Start];
    }
}
/** 代理方法中获取code,传递code给模型*/
#pragma mark- Pargma mark- UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSString *requestString=request.URL.absoluteString;
    if ([requestString rangeOfString:@"code="].location!=NSNotFound) {
        NSArray *requestArray=[requestString componentsSeparatedByString:@"="];
        NSString *code=[requestArray lastObject];
        //已经得到code，传递code给ViewController
        if ([_delegate respondsToSelector:@selector(sinaAuthorizationView:didGetCode:)]) {
            [_delegate sinaAuthorizationView:self didGetCode:code];
        }
        [webView removeFromSuperview];
        [self stop];
        return NO;
    }
    [self stop];
    return YES;
}
//TODO:开启蒙版
-(void)Start{
    MBProgressHUD *HUD=[[MBProgressHUD alloc]init];
    [self addSubview:HUD];
    self.HUD=HUD;
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.opacity=0.3;
    HUD.animationType=MBProgressHUDAnimationFade;
    HUD.minShowTime=2;
    [HUD show:YES];
}
//TODO:隐藏蒙版
-(void)stop{
    [self.HUD hide:YES];
}
@end
