//
//  ZLRequestUserMessageModel.h
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/25.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZLRequestUserMessageModel;
@protocol ZLRequestUserMessageModelDelegate <NSObject>
- (void)requestUserMessageModel:(ZLRequestUserMessageModel *)requestUserMessageModel didGetModelArray:(NSArray *)array;
@end
@interface ZLRequestUserMessageModel : NSObject

@property(weak,nonatomic)id <ZLRequestUserMessageModelDelegate>delegate;

/** 快速构造方法，提供单例对象*/
+ (instancetype)requestUserMessageModel;
- (void)RequestUserDataModelWithToken:(NSString *)token Page:(int)page;
@end
