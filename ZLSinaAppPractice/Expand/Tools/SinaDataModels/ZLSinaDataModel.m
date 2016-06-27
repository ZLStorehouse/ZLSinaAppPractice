//
//  ZLSinaDataModel.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLSinaDataModel.h"
#import "ZLStatuses.h"


NSString *const kZLSinaDataModelAd = @"ad";
NSString *const kZLSinaDataModelHasvisible = @"hasvisible";
NSString *const kZLSinaDataModelHasUnread = @"has_unread";
NSString *const kZLSinaDataModelAdvertises = @"advertises";
NSString *const kZLSinaDataModelPreviousCursor = @"previous_cursor";
NSString *const kZLSinaDataModelUveBlank = @"uve_blank";
NSString *const kZLSinaDataModelTotalNumber = @"total_number";
NSString *const kZLSinaDataModelInterval = @"interval";
NSString *const kZLSinaDataModelMaxId = @"max_id";
NSString *const kZLSinaDataModelStatuses = @"statuses";
NSString *const kZLSinaDataModelNextCursor = @"next_cursor";
NSString *const kZLSinaDataModelSinceId = @"since_id";


@interface ZLSinaDataModel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLSinaDataModel

@synthesize ad = _ad;
@synthesize hasvisible = _hasvisible;
@synthesize hasUnread = _hasUnread;
@synthesize advertises = _advertises;
@synthesize previousCursor = _previousCursor;
@synthesize uveBlank = _uveBlank;
@synthesize totalNumber = _totalNumber;
@synthesize interval = _interval;
@synthesize maxId = _maxId;
@synthesize statuses = _statuses;
@synthesize nextCursor = _nextCursor;
@synthesize sinceId = _sinceId;


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
            self.ad = [self objectOrNilForKey:kZLSinaDataModelAd fromDictionary:dict];
            self.hasvisible = [[self objectOrNilForKey:kZLSinaDataModelHasvisible fromDictionary:dict] boolValue];
            self.hasUnread = [[self objectOrNilForKey:kZLSinaDataModelHasUnread fromDictionary:dict] doubleValue];
            self.advertises = [self objectOrNilForKey:kZLSinaDataModelAdvertises fromDictionary:dict];
            self.previousCursor = [[self objectOrNilForKey:kZLSinaDataModelPreviousCursor fromDictionary:dict] doubleValue];
            self.uveBlank = [[self objectOrNilForKey:kZLSinaDataModelUveBlank fromDictionary:dict] doubleValue];
            self.totalNumber = [[self objectOrNilForKey:kZLSinaDataModelTotalNumber fromDictionary:dict] doubleValue];
            self.interval = [[self objectOrNilForKey:kZLSinaDataModelInterval fromDictionary:dict] doubleValue];
            self.maxId = [[self objectOrNilForKey:kZLSinaDataModelMaxId fromDictionary:dict] doubleValue];
    NSObject *receivedZLStatuses = [dict objectForKey:kZLSinaDataModelStatuses];
    NSMutableArray *parsedZLStatuses = [NSMutableArray array];
    if ([receivedZLStatuses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedZLStatuses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedZLStatuses addObject:[ZLStatuses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedZLStatuses isKindOfClass:[NSDictionary class]]) {
       [parsedZLStatuses addObject:[ZLStatuses modelObjectWithDictionary:(NSDictionary *)receivedZLStatuses]];
    }

    self.statuses = [NSArray arrayWithArray:parsedZLStatuses];
            self.nextCursor = [[self objectOrNilForKey:kZLSinaDataModelNextCursor fromDictionary:dict] doubleValue];
            self.sinceId = [[self objectOrNilForKey:kZLSinaDataModelSinceId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForAd = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ad) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAd addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAd addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAd] forKey:kZLSinaDataModelAd];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasvisible] forKey:kZLSinaDataModelHasvisible];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasUnread] forKey:kZLSinaDataModelHasUnread];
    NSMutableArray *tempArrayForAdvertises = [NSMutableArray array];
    for (NSObject *subArrayObject in self.advertises) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAdvertises addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAdvertises addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAdvertises] forKey:kZLSinaDataModelAdvertises];
    [mutableDict setValue:[NSNumber numberWithDouble:self.previousCursor] forKey:kZLSinaDataModelPreviousCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.uveBlank] forKey:kZLSinaDataModelUveBlank];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalNumber] forKey:kZLSinaDataModelTotalNumber];
    [mutableDict setValue:[NSNumber numberWithDouble:self.interval] forKey:kZLSinaDataModelInterval];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxId] forKey:kZLSinaDataModelMaxId];
    NSMutableArray *tempArrayForStatuses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.statuses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForStatuses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForStatuses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForStatuses] forKey:kZLSinaDataModelStatuses];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nextCursor] forKey:kZLSinaDataModelNextCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sinceId] forKey:kZLSinaDataModelSinceId];

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

    self.ad = [aDecoder decodeObjectForKey:kZLSinaDataModelAd];
    self.hasvisible = [aDecoder decodeBoolForKey:kZLSinaDataModelHasvisible];
    self.hasUnread = [aDecoder decodeDoubleForKey:kZLSinaDataModelHasUnread];
    self.advertises = [aDecoder decodeObjectForKey:kZLSinaDataModelAdvertises];
    self.previousCursor = [aDecoder decodeDoubleForKey:kZLSinaDataModelPreviousCursor];
    self.uveBlank = [aDecoder decodeDoubleForKey:kZLSinaDataModelUveBlank];
    self.totalNumber = [aDecoder decodeDoubleForKey:kZLSinaDataModelTotalNumber];
    self.interval = [aDecoder decodeDoubleForKey:kZLSinaDataModelInterval];
    self.maxId = [aDecoder decodeDoubleForKey:kZLSinaDataModelMaxId];
    self.statuses = [aDecoder decodeObjectForKey:kZLSinaDataModelStatuses];
    self.nextCursor = [aDecoder decodeDoubleForKey:kZLSinaDataModelNextCursor];
    self.sinceId = [aDecoder decodeDoubleForKey:kZLSinaDataModelSinceId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ad forKey:kZLSinaDataModelAd];
    [aCoder encodeBool:_hasvisible forKey:kZLSinaDataModelHasvisible];
    [aCoder encodeDouble:_hasUnread forKey:kZLSinaDataModelHasUnread];
    [aCoder encodeObject:_advertises forKey:kZLSinaDataModelAdvertises];
    [aCoder encodeDouble:_previousCursor forKey:kZLSinaDataModelPreviousCursor];
    [aCoder encodeDouble:_uveBlank forKey:kZLSinaDataModelUveBlank];
    [aCoder encodeDouble:_totalNumber forKey:kZLSinaDataModelTotalNumber];
    [aCoder encodeDouble:_interval forKey:kZLSinaDataModelInterval];
    [aCoder encodeDouble:_maxId forKey:kZLSinaDataModelMaxId];
    [aCoder encodeObject:_statuses forKey:kZLSinaDataModelStatuses];
    [aCoder encodeDouble:_nextCursor forKey:kZLSinaDataModelNextCursor];
    [aCoder encodeDouble:_sinceId forKey:kZLSinaDataModelSinceId];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLSinaDataModel *copy = [[ZLSinaDataModel alloc] init];
    
    if (copy) {

        copy.ad = [self.ad copyWithZone:zone];
        copy.hasvisible = self.hasvisible;
        copy.hasUnread = self.hasUnread;
        copy.advertises = [self.advertises copyWithZone:zone];
        copy.previousCursor = self.previousCursor;
        copy.uveBlank = self.uveBlank;
        copy.totalNumber = self.totalNumber;
        copy.interval = self.interval;
        copy.maxId = self.maxId;
        copy.statuses = [self.statuses copyWithZone:zone];
        copy.nextCursor = self.nextCursor;
        copy.sinceId = self.sinceId;
    }
    
    return copy;
}


@end
