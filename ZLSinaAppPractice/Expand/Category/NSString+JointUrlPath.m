//
//  NSString+JointUrlPath.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "NSString+JointUrlPath.h"
#import "ZLDomainNameConst.h"

@implementation NSString (JointUrlPath)
+(NSString *)urlStringWithPathString:(NSString *)string{
    return [NSString stringWithFormat:@"https://%@%@",offlineString,string];
}
@end
