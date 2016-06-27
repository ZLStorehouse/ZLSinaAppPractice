//
//  ZLExtendInfo.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLExtendInfo.h"
#import "ZLWeiboCamera.h"


NSString *const kZLExtendInfoWeiboCamera = @"weibo_camera";


@interface ZLExtendInfo ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLExtendInfo

@synthesize weiboCamera = _weiboCamera;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.weiboCamera = [ZLWeiboCamera modelObjectWithDictionary:[dict objectForKey:kZLExtendInfoWeiboCamera]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.weiboCamera dictionaryRepresentation] forKey:kZLExtendInfoWeiboCamera];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.weiboCamera = [aDecoder decodeObjectForKey:kZLExtendInfoWeiboCamera];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_weiboCamera forKey:kZLExtendInfoWeiboCamera];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLExtendInfo *copy = [[ZLExtendInfo alloc] init];
    
    if (copy) {

        copy.weiboCamera = [self.weiboCamera copyWithZone:zone];
    }
    
    return copy;
}


@end
