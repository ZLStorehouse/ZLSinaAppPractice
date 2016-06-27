//
//  ZLLogInViewController.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/23.
//  Copyright © 2016年 zhiYou. All rights reserved.
//
#define WS(ws) __weak typeof(self)ws=self
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
#import "ZLLogInViewController.h"
#import "ZLSinaAuthorizationView.h"
#import "ZLSinaRequestDataModel.h"

@interface ZLLogInViewController ()<ZLSinaRequestDataModelDelegate,ZLSinaAuthorizationViewDelegate>
@end

@implementation ZLLogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets=NO;
    NSURLRequest *request=[ZLSinaRequestDataModel sinaRequestData];
    ZLSinaAuthorizationView *authorizationView=[[ZLSinaAuthorizationView alloc]init];
    authorizationView.delegate=self;
    [self.view addSubview:authorizationView];
    WS(weakSelf);
    [authorizationView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.view);
    }];
    [authorizationView addWebViewWithRequest:request];
}

//从view得到code经过此代理方法传递给Model进行下一步请求
#pragma mark- Pargma mark- ZLSinaAuthorizationViewDelegate
-(void)sinaAuthorizationView:(ZLSinaAuthorizationView *)sinaAuthorizationView didGetCode:(NSString *)code{
    ZLSinaRequestDataModel *model=[[ZLSinaRequestDataModel alloc]init];
    model.delegate=self;
    [model requestTokenWithCode:code];
}

//授权成功，返回首页
#pragma mark- Pargma mark- ZLSinaRequestDataModelDelegate
-(void)didLogIn{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
