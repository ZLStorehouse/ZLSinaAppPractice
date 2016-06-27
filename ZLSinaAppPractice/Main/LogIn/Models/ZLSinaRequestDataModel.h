//
//  ZLSinaRequestDataModel.h
//  SinaAppPractice
//
//  Created by mac on 16/6/15.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZLSinaRequestDataModel;
@protocol ZLSinaRequestDataModelDelegate <NSObject>
//已经登录，可以返回首页
- (void)didLogIn;

@end
@interface ZLSinaRequestDataModel : NSObject

@property(weak,nonatomic)id <ZLSinaRequestDataModelDelegate>delegate;

/** 快速构造方法，提供单例对象*/
+ (instancetype)sinaRequestDataModel;
/** 请求授权数据*/
+ (NSURLRequest *)sinaRequestData;
/** 获取code*/
- (void)requestTokenWithCode:(NSString *)code;
@end
