//
//  ZLVisible.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLVisible.h"


NSString *const kZLVisibleType = @"type";
NSString *const kZLVisibleListId = @"list_id";


@interface ZLVisible ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLVisible

@synthesize type = _type;
@synthesize listId = _listId;


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
            self.type = [[self objectOrNilForKey:kZLVisibleType fromDictionary:dict] doubleValue];
            self.listId = [[self objectOrNilForKey:kZLVisibleListId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kZLVisibleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listId] forKey:kZLVisibleListId];

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

    self.type = [aDecoder decodeDoubleForKey:kZLVisibleType];
    self.listId = [aDecoder decodeDoubleForKey:kZLVisibleListId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_type forKey:kZLVisibleType];
    [aCoder encodeDouble:_listId forKey:kZLVisibleListId];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLVisible *copy = [[ZLVisible alloc] init];
    
    if (copy) {

        copy.type = self.type;
        copy.listId = self.listId;
    }
    
    return copy;
}


@end
