//
//  NSString+Image.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/26.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "NSString+Image.h"

@implementation NSString (Image)
+ (UIImage *)imageWithImageName:(NSString *)string{
    return [[UIImage imageNamed:string] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
