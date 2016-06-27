//
//  ZLWeiboCamera.h
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ZLWeiboCamera : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *c;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
