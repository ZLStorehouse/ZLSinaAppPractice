//
//  ZLRequestUserMessageModel.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/25.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "ZLRequestUserMessageModel.h"
#import <AFNetworking.h>
#import "NSString+JointUrlPath.h"
#import "DataModels.h"

@implementation ZLRequestUserMessageModel
+ (instancetype)requestUserMessageModel{
    return [[self alloc]init];
}

- (void)RequestUserDataModelWithToken:(NSString *)token Page:(int)page{
    NSString *urlString=[NSString urlStringWithPathString:@"/2/statuses/home_timeline.json"];
    AFHTTPSessionManager *manager=[AFHTTPSessionManager manager];
    NSNumber *pageNumber=[NSNumber numberWithInt:page];
    NSDictionary *dict=@{@"access_token":token,@"page":pageNumber};
    [manager GET:urlString parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *  _Nullable responseObject) {
        ZLSinaDataModel *model=[ZLSinaDataModel modelObjectWithDictionary:responseObject];
        if ([_delegate respondsToSelector:@selector(requestUserMessageModel:didGetModelArray:)]) {
            [_delegate requestUserMessageModel:self didGetModelArray:model.statuses];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}

@end
