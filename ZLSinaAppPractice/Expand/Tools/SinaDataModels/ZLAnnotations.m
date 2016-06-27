//
//  ZLAnnotations.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLAnnotations.h"


NSString *const kZLAnnotationsClientMblogid = @"client_mblogid";
NSString *const kZLAnnotationsMapiRequest = @"mapi_request";


@interface ZLAnnotations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLAnnotations

@synthesize clientMblogid = _clientMblogid;
@synthesize mapiRequest = _mapiRequest;


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
            self.clientMblogid = [self objectOrNilForKey:kZLAnnotationsClientMblogid fromDictionary:dict];
            self.mapiRequest = [[self objectOrNilForKey:kZLAnnotationsMapiRequest fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.clientMblogid forKey:kZLAnnotationsClientMblogid];
    [mutableDict setValue:[NSNumber numberWithBool:self.mapiRequest] forKey:kZLAnnotationsMapiRequest];

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

    self.clientMblogid = [aDecoder decodeObjectForKey:kZLAnnotationsClientMblogid];
    self.mapiRequest = [aDecoder decodeBoolForKey:kZLAnnotationsMapiRequest];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_clientMblogid forKey:kZLAnnotationsClientMblogid];
    [aCoder encodeBool:_mapiRequest forKey:kZLAnnotationsMapiRequest];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLAnnotations *copy = [[ZLAnnotations alloc] init];
    
    if (copy) {

        copy.clientMblogid = [self.clientMblogid copyWithZone:zone];
        copy.mapiRequest = self.mapiRequest;
    }
    
    return copy;
}


@end
