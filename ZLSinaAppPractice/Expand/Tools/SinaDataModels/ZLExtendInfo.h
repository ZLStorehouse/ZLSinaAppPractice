//
//  ZLExtendInfo.h
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZLWeiboCamera;

@interface ZLExtendInfo : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) ZLWeiboCamera *weiboCamera;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
