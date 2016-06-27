//
//  ZLSandBoxManager.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "ZLSinaTokenManager.h"

@implementation ZLSinaTokenManager
//实现单例
+(instancetype)standardSinaTokenManager{
    static ZLSinaTokenManager *manager=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager=[[super allocWithZone:NULL]init];
    });
    return manager;
}
+(id)allocWithZone:(struct _NSZone *)zone{
    return [self standardSinaTokenManager];
}

+(void)writeSandboxWithToken:(NSString *)token ExpiresIn:(NSNumber *)expiresIn{
    //将秒数转换为距现在多少秒后的时间
    NSDate *expiresDate=[NSDate dateWithTimeIntervalSinceNow:[expiresIn doubleValue]];
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    [user setObject:token forKey:@"token"];
    [user setObject:expiresDate forKey:@"expiresDate"];
    [user synchronize];
}
+ (BOOL)accessTokenIsAvailable{
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    NSString *token=[user objectForKey:@"token"];
    NSDate *expiresDate=[user objectForKey:@"expiresDate"];
    if (token&&expiresDate) {
        //判断时间是否过期
        if ([[NSDate date]compare:expiresDate]==NSOrderedAscending) {
            return YES;
        }else{
            return NO;
        }
    }else{
        return NO;
    }
}
-(NSString *)tokenString{
    if (!_tokenString) {
        _tokenString=[[NSUserDefaults standardUserDefaults] objectForKey:@"token"];
    }
    return _tokenString;
}
@end
