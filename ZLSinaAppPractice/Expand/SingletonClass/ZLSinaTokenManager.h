//
//  ZLSandBoxManager.h
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZLSinaTokenManager : NSObject

/** token*/
@property(copy,nonatomic)NSString *tokenString;


/** 快速构造方法，提供单例对象*/
+(instancetype)standardSinaTokenManager;
/** 向沙盒写入Token和到期时间的秒数*/
+(void)writeSandboxWithToken:(NSString *)token ExpiresIn:(NSNumber *)expiresIn;
/** 判断Token的使用是否到期*/
+ (BOOL)accessTokenIsAvailable;
@end
