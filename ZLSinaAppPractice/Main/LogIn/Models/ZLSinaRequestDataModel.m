//
//  ZLSinaRequestDataModel.m
//  SinaAppPractice
//
//  Created by mac on 16/6/15.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "ZLSinaRequestDataModel.h"
#import "NSString+JointUrlPath.h"
#import "ZLSinaParameterConst.h"
#import <AFNetworking.h>
#import "ZLSinaParameterConst.h"
#import "ZLSinaTokenManager.h"

@implementation ZLSinaRequestDataModel
+ (instancetype)sinaRequestDataModel{
    return [[self alloc] init];
}

+ (NSURLRequest *)sinaRequestData{
    NSString *urlString=[NSString urlStringWithPathString:@"/oauth2/authorize"];
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"%@?client_id=%@&redirect_uri=%@",urlString,clientIdString,redirectUriString]];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    return request;
}
//TODO:得到code后，发起获取token的请求
- (void)requestTokenWithCode:(NSString *)code{
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    NSString *urlString=[NSString urlStringWithPathString:@"/oauth2/access_token"];
    NSDictionary *dict=@{@"client_id":clientIdString,@"client_secret":clientSecretString,@"grant_type":@"authorization_code",@"code":code,@"redirect_uri":redirectUriString};
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
    [manager POST:urlString parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary * _Nullable responseObject) {
        NSString *tokenString=responseObject[@"access_token"];
        NSNumber *expiresIn=responseObject[@"expires_in"];
        //传给单例类进行写入沙盒
        [ZLSinaTokenManager writeSandboxWithToken:tokenString ExpiresIn:expiresIn];
        //通知controller已经登录成功，返回首页
        if ([_delegate respondsToSelector:@selector(didLogIn)]) {
            [_delegate didLogIn];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}

@end
