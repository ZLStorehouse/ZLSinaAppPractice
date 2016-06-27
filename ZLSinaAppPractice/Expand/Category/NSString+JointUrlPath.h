//
//  NSString+JointUrlPath.h
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JointUrlPath)
/** 只需要给路径就能返回一个完整的URL*/
+(NSString *)urlStringWithPathString:(NSString *)string;
@end
