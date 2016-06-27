//
//  ZLRetweetedStatus.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLRetweetedStatus.h"
#import "ZLExtendInfo.h"
#import "ZLPicUrls.h"
#import "ZLUser.h"
#import "ZLAnnotations.h"
#import "ZLVisible.h"


NSString *const kZLRetweetedStatusFavorited = @"favorited";
NSString *const kZLRetweetedStatusTruncated = @"truncated";
NSString *const kZLRetweetedStatusId = @"id";
NSString *const kZLRetweetedStatusCreatedAt = @"created_at";
NSString *const kZLRetweetedStatusExtendInfo = @"extend_info";
NSString *const kZLRetweetedStatusInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kZLRetweetedStatusIsLongText = @"isLongText";
NSString *const kZLRetweetedStatusPicUrls = @"pic_urls";
NSString *const kZLRetweetedStatusText = @"text";
NSString *const kZLRetweetedStatusIdstr = @"idstr";
NSString *const kZLRetweetedStatusTextLength = @"textLength";
NSString *const kZLRetweetedStatusSourceType = @"source_type";
NSString *const kZLRetweetedStatusHotWeiboTags = @"hot_weibo_tags";
NSString *const kZLRetweetedStatusGeo = @"geo";
NSString *const kZLRetweetedStatusPageType = @"page_type";
NSString *const kZLRetweetedStatusUser = @"user";
NSString *const kZLRetweetedStatusTextTagTips = @"text_tag_tips";
NSString *const kZLRetweetedStatusCommentsCount = @"comments_count";
NSString *const kZLRetweetedStatusThumbnailPic = @"thumbnail_pic";
NSString *const kZLRetweetedStatusSource = @"source";
NSString *const kZLRetweetedStatusSourceAllowclick = @"source_allowclick";
NSString *const kZLRetweetedStatusBizFeature = @"biz_feature";
NSString *const kZLRetweetedStatusAnnotations = @"annotations";
NSString *const kZLRetweetedStatusPositiveRecomFlag = @"positive_recom_flag";
NSString *const kZLRetweetedStatusBmiddlePic = @"bmiddle_pic";
NSString *const kZLRetweetedStatusVisible = @"visible";
NSString *const kZLRetweetedStatusBizIds = @"biz_ids";
NSString *const kZLRetweetedStatusInReplyToStatusId = @"in_reply_to_status_id";
NSString *const kZLRetweetedStatusMid = @"mid";
NSString *const kZLRetweetedStatusCardid = @"cardid";
NSString *const kZLRetweetedStatusRepostsCount = @"reposts_count";
NSString *const kZLRetweetedStatusUserType = @"userType";
NSString *const kZLRetweetedStatusAttitudesCount = @"attitudes_count";
NSString *const kZLRetweetedStatusDarwinTags = @"darwin_tags";
NSString *const kZLRetweetedStatusMlevel = @"mlevel";
NSString *const kZLRetweetedStatusInReplyToUserId = @"in_reply_to_user_id";
NSString *const kZLRetweetedStatusPicStatus = @"picStatus";
NSString *const kZLRetweetedStatusOriginalPic = @"original_pic";


@interface ZLRetweetedStatus ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLRetweetedStatus

@synthesize favorited = _favorited;
@synthesize truncated = _truncated;
@synthesize retweetedStatusIdentifier = _retweetedStatusIdentifier;
@synthesize createdAt = _createdAt;
@synthesize extendInfo = _extendInfo;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize isLongText = _isLongText;
@synthesize picUrls = _picUrls;
@synthesize text = _text;
@synthesize idstr = _idstr;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize geo = _geo;
@synthesize pageType = _pageType;
@synthesize user = _user;
@synthesize textTagTips = _textTagTips;
@synthesize commentsCount = _commentsCount;
@synthesize thumbnailPic = _thumbnailPic;
@synthesize source = _source;
@synthesize sourceAllowclick = _sourceAllowclick;
@synthesize bizFeature = _bizFeature;
@synthesize annotations = _annotations;
@synthesize positiveRecomFlag = _positiveRecomFlag;
@synthesize bmiddlePic = _bmiddlePic;
@synthesize visible = _visible;
@synthesize bizIds = _bizIds;
@synthesize inReplyToStatusId = _inReplyToStatusId;
@synthesize mid = _mid;
@synthesize cardid = _cardid;
@synthesize repostsCount = _repostsCount;
@synthesize userType = _userType;
@synthesize attitudesCount = _attitudesCount;
@synthesize darwinTags = _darwinTags;
@synthesize mlevel = _mlevel;
@synthesize inReplyToUserId = _inReplyToUserId;
@synthesize picStatus = _picStatus;
@synthesize originalPic = _originalPic;


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
            self.favorited = [[self objectOrNilForKey:kZLRetweetedStatusFavorited fromDictionary:dict] boolValue];
            self.truncated = [[self objectOrNilForKey:kZLRetweetedStatusTruncated fromDictionary:dict] boolValue];
            self.retweetedStatusIdentifier = [[self objectOrNilForKey:kZLRetweetedStatusId fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kZLRetweetedStatusCreatedAt fromDictionary:dict];
            self.extendInfo = [ZLExtendInfo modelObjectWithDictionary:[dict objectForKey:kZLRetweetedStatusExtendInfo]];
            self.inReplyToScreenName = [self objectOrNilForKey:kZLRetweetedStatusInReplyToScreenName fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kZLRetweetedStatusIsLongText fromDictionary:dict] boolValue];
    NSObject *receivedZLPicUrls = [dict objectForKey:kZLRetweetedStatusPicUrls];
    NSMutableArray *parsedZLPicUrls = [NSMutableArray array];
    if ([receivedZLPicUrls isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedZLPicUrls) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedZLPicUrls addObject:[ZLPicUrls modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedZLPicUrls isKindOfClass:[NSDictionary class]]) {
       [parsedZLPicUrls addObject:[ZLPicUrls modelObjectWithDictionary:(NSDictionary *)receivedZLPicUrls]];
    }

    self.picUrls = [NSArray arrayWithArray:parsedZLPicUrls];
            self.text = [self objectOrNilForKey:kZLRetweetedStatusText fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kZLRetweetedStatusIdstr fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kZLRetweetedStatusTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kZLRetweetedStatusSourceType fromDictionary:dict] doubleValue];
            self.hotWeiboTags = [self objectOrNilForKey:kZLRetweetedStatusHotWeiboTags fromDictionary:dict];
            self.geo = [self objectOrNilForKey:kZLRetweetedStatusGeo fromDictionary:dict];
            self.pageType = [[self objectOrNilForKey:kZLRetweetedStatusPageType fromDictionary:dict] doubleValue];
            self.user = [ZLUser modelObjectWithDictionary:[dict objectForKey:kZLRetweetedStatusUser]];
            self.textTagTips = [self objectOrNilForKey:kZLRetweetedStatusTextTagTips fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kZLRetweetedStatusCommentsCount fromDictionary:dict] doubleValue];
            self.thumbnailPic = [self objectOrNilForKey:kZLRetweetedStatusThumbnailPic fromDictionary:dict];
            self.source = [self objectOrNilForKey:kZLRetweetedStatusSource fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kZLRetweetedStatusSourceAllowclick fromDictionary:dict] doubleValue];
            self.bizFeature = [[self objectOrNilForKey:kZLRetweetedStatusBizFeature fromDictionary:dict] doubleValue];
    NSObject *receivedZLAnnotations = [dict objectForKey:kZLRetweetedStatusAnnotations];
    NSMutableArray *parsedZLAnnotations = [NSMutableArray array];
    if ([receivedZLAnnotations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedZLAnnotations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedZLAnnotations addObject:[ZLAnnotations modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedZLAnnotations isKindOfClass:[NSDictionary class]]) {
       [parsedZLAnnotations addObject:[ZLAnnotations modelObjectWithDictionary:(NSDictionary *)receivedZLAnnotations]];
    }

    self.annotations = [NSArray arrayWithArray:parsedZLAnnotations];
            self.positiveRecomFlag = [[self objectOrNilForKey:kZLRetweetedStatusPositiveRecomFlag fromDictionary:dict] doubleValue];
            self.bmiddlePic = [self objectOrNilForKey:kZLRetweetedStatusBmiddlePic fromDictionary:dict];
            self.visible = [ZLVisible modelObjectWithDictionary:[dict objectForKey:kZLRetweetedStatusVisible]];
            self.bizIds = [self objectOrNilForKey:kZLRetweetedStatusBizIds fromDictionary:dict];
            self.inReplyToStatusId = [self objectOrNilForKey:kZLRetweetedStatusInReplyToStatusId fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kZLRetweetedStatusMid fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kZLRetweetedStatusCardid fromDictionary:dict];
            self.repostsCount = [[self objectOrNilForKey:kZLRetweetedStatusRepostsCount fromDictionary:dict] doubleValue];
            self.userType = [[self objectOrNilForKey:kZLRetweetedStatusUserType fromDictionary:dict] doubleValue];
            self.attitudesCount = [[self objectOrNilForKey:kZLRetweetedStatusAttitudesCount fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kZLRetweetedStatusDarwinTags fromDictionary:dict];
            self.mlevel = [[self objectOrNilForKey:kZLRetweetedStatusMlevel fromDictionary:dict] doubleValue];
            self.inReplyToUserId = [self objectOrNilForKey:kZLRetweetedStatusInReplyToUserId fromDictionary:dict];
            self.picStatus = [self objectOrNilForKey:kZLRetweetedStatusPicStatus fromDictionary:dict];
            self.originalPic = [self objectOrNilForKey:kZLRetweetedStatusOriginalPic fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kZLRetweetedStatusFavorited];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kZLRetweetedStatusTruncated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.retweetedStatusIdentifier] forKey:kZLRetweetedStatusId];
    [mutableDict setValue:self.createdAt forKey:kZLRetweetedStatusCreatedAt];
    [mutableDict setValue:[self.extendInfo dictionaryRepresentation] forKey:kZLRetweetedStatusExtendInfo];
    [mutableDict setValue:self.inReplyToScreenName forKey:kZLRetweetedStatusInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kZLRetweetedStatusIsLongText];
    NSMutableArray *tempArrayForPicUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.picUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPicUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPicUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kZLRetweetedStatusPicUrls];
    [mutableDict setValue:self.text forKey:kZLRetweetedStatusText];
    [mutableDict setValue:self.idstr forKey:kZLRetweetedStatusIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kZLRetweetedStatusTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kZLRetweetedStatusSourceType];
    NSMutableArray *tempArrayForHotWeiboTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.hotWeiboTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForHotWeiboTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForHotWeiboTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kZLRetweetedStatusHotWeiboTags];
    [mutableDict setValue:self.geo forKey:kZLRetweetedStatusGeo];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kZLRetweetedStatusPageType];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kZLRetweetedStatusUser];
    NSMutableArray *tempArrayForTextTagTips = [NSMutableArray array];
    for (NSObject *subArrayObject in self.textTagTips) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTextTagTips addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTextTagTips addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kZLRetweetedStatusTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kZLRetweetedStatusCommentsCount];
    [mutableDict setValue:self.thumbnailPic forKey:kZLRetweetedStatusThumbnailPic];
    [mutableDict setValue:self.source forKey:kZLRetweetedStatusSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kZLRetweetedStatusSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kZLRetweetedStatusBizFeature];
    NSMutableArray *tempArrayForAnnotations = [NSMutableArray array];
    for (NSObject *subArrayObject in self.annotations) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAnnotations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAnnotations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kZLRetweetedStatusAnnotations];
    [mutableDict setValue:[NSNumber numberWithDouble:self.positiveRecomFlag] forKey:kZLRetweetedStatusPositiveRecomFlag];
    [mutableDict setValue:self.bmiddlePic forKey:kZLRetweetedStatusBmiddlePic];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kZLRetweetedStatusVisible];
    NSMutableArray *tempArrayForBizIds = [NSMutableArray array];
    for (NSObject *subArrayObject in self.bizIds) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBizIds addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBizIds addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBizIds] forKey:kZLRetweetedStatusBizIds];
    [mutableDict setValue:self.inReplyToStatusId forKey:kZLRetweetedStatusInReplyToStatusId];
    [mutableDict setValue:self.mid forKey:kZLRetweetedStatusMid];
    [mutableDict setValue:self.cardid forKey:kZLRetweetedStatusCardid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kZLRetweetedStatusRepostsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kZLRetweetedStatusUserType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kZLRetweetedStatusAttitudesCount];
    NSMutableArray *tempArrayForDarwinTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.darwinTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDarwinTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDarwinTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kZLRetweetedStatusDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kZLRetweetedStatusMlevel];
    [mutableDict setValue:self.inReplyToUserId forKey:kZLRetweetedStatusInReplyToUserId];
    [mutableDict setValue:self.picStatus forKey:kZLRetweetedStatusPicStatus];
    [mutableDict setValue:self.originalPic forKey:kZLRetweetedStatusOriginalPic];

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

    self.favorited = [aDecoder decodeBoolForKey:kZLRetweetedStatusFavorited];
    self.truncated = [aDecoder decodeBoolForKey:kZLRetweetedStatusTruncated];
    self.retweetedStatusIdentifier = [aDecoder decodeDoubleForKey:kZLRetweetedStatusId];
    self.createdAt = [aDecoder decodeObjectForKey:kZLRetweetedStatusCreatedAt];
    self.extendInfo = [aDecoder decodeObjectForKey:kZLRetweetedStatusExtendInfo];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kZLRetweetedStatusInReplyToScreenName];
    self.isLongText = [aDecoder decodeBoolForKey:kZLRetweetedStatusIsLongText];
    self.picUrls = [aDecoder decodeObjectForKey:kZLRetweetedStatusPicUrls];
    self.text = [aDecoder decodeObjectForKey:kZLRetweetedStatusText];
    self.idstr = [aDecoder decodeObjectForKey:kZLRetweetedStatusIdstr];
    self.textLength = [aDecoder decodeDoubleForKey:kZLRetweetedStatusTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kZLRetweetedStatusSourceType];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kZLRetweetedStatusHotWeiboTags];
    self.geo = [aDecoder decodeObjectForKey:kZLRetweetedStatusGeo];
    self.pageType = [aDecoder decodeDoubleForKey:kZLRetweetedStatusPageType];
    self.user = [aDecoder decodeObjectForKey:kZLRetweetedStatusUser];
    self.textTagTips = [aDecoder decodeObjectForKey:kZLRetweetedStatusTextTagTips];
    self.commentsCount = [aDecoder decodeDoubleForKey:kZLRetweetedStatusCommentsCount];
    self.thumbnailPic = [aDecoder decodeObjectForKey:kZLRetweetedStatusThumbnailPic];
    self.source = [aDecoder decodeObjectForKey:kZLRetweetedStatusSource];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kZLRetweetedStatusSourceAllowclick];
    self.bizFeature = [aDecoder decodeDoubleForKey:kZLRetweetedStatusBizFeature];
    self.annotations = [aDecoder decodeObjectForKey:kZLRetweetedStatusAnnotations];
    self.positiveRecomFlag = [aDecoder decodeDoubleForKey:kZLRetweetedStatusPositiveRecomFlag];
    self.bmiddlePic = [aDecoder decodeObjectForKey:kZLRetweetedStatusBmiddlePic];
    self.visible = [aDecoder decodeObjectForKey:kZLRetweetedStatusVisible];
    self.bizIds = [aDecoder decodeObjectForKey:kZLRetweetedStatusBizIds];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kZLRetweetedStatusInReplyToStatusId];
    self.mid = [aDecoder decodeObjectForKey:kZLRetweetedStatusMid];
    self.cardid = [aDecoder decodeObjectForKey:kZLRetweetedStatusCardid];
    self.repostsCount = [aDecoder decodeDoubleForKey:kZLRetweetedStatusRepostsCount];
    self.userType = [aDecoder decodeDoubleForKey:kZLRetweetedStatusUserType];
    self.attitudesCount = [aDecoder decodeDoubleForKey:kZLRetweetedStatusAttitudesCount];
    self.darwinTags = [aDecoder decodeObjectForKey:kZLRetweetedStatusDarwinTags];
    self.mlevel = [aDecoder decodeDoubleForKey:kZLRetweetedStatusMlevel];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kZLRetweetedStatusInReplyToUserId];
    self.picStatus = [aDecoder decodeObjectForKey:kZLRetweetedStatusPicStatus];
    self.originalPic = [aDecoder decodeObjectForKey:kZLRetweetedStatusOriginalPic];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_favorited forKey:kZLRetweetedStatusFavorited];
    [aCoder encodeBool:_truncated forKey:kZLRetweetedStatusTruncated];
    [aCoder encodeDouble:_retweetedStatusIdentifier forKey:kZLRetweetedStatusId];
    [aCoder encodeObject:_createdAt forKey:kZLRetweetedStatusCreatedAt];
    [aCoder encodeObject:_extendInfo forKey:kZLRetweetedStatusExtendInfo];
    [aCoder encodeObject:_inReplyToScreenName forKey:kZLRetweetedStatusInReplyToScreenName];
    [aCoder encodeBool:_isLongText forKey:kZLRetweetedStatusIsLongText];
    [aCoder encodeObject:_picUrls forKey:kZLRetweetedStatusPicUrls];
    [aCoder encodeObject:_text forKey:kZLRetweetedStatusText];
    [aCoder encodeObject:_idstr forKey:kZLRetweetedStatusIdstr];
    [aCoder encodeDouble:_textLength forKey:kZLRetweetedStatusTextLength];
    [aCoder encodeDouble:_sourceType forKey:kZLRetweetedStatusSourceType];
    [aCoder encodeObject:_hotWeiboTags forKey:kZLRetweetedStatusHotWeiboTags];
    [aCoder encodeObject:_geo forKey:kZLRetweetedStatusGeo];
    [aCoder encodeDouble:_pageType forKey:kZLRetweetedStatusPageType];
    [aCoder encodeObject:_user forKey:kZLRetweetedStatusUser];
    [aCoder encodeObject:_textTagTips forKey:kZLRetweetedStatusTextTagTips];
    [aCoder encodeDouble:_commentsCount forKey:kZLRetweetedStatusCommentsCount];
    [aCoder encodeObject:_thumbnailPic forKey:kZLRetweetedStatusThumbnailPic];
    [aCoder encodeObject:_source forKey:kZLRetweetedStatusSource];
    [aCoder encodeDouble:_sourceAllowclick forKey:kZLRetweetedStatusSourceAllowclick];
    [aCoder encodeDouble:_bizFeature forKey:kZLRetweetedStatusBizFeature];
    [aCoder encodeObject:_annotations forKey:kZLRetweetedStatusAnnotations];
    [aCoder encodeDouble:_positiveRecomFlag forKey:kZLRetweetedStatusPositiveRecomFlag];
    [aCoder encodeObject:_bmiddlePic forKey:kZLRetweetedStatusBmiddlePic];
    [aCoder encodeObject:_visible forKey:kZLRetweetedStatusVisible];
    [aCoder encodeObject:_bizIds forKey:kZLRetweetedStatusBizIds];
    [aCoder encodeObject:_inReplyToStatusId forKey:kZLRetweetedStatusInReplyToStatusId];
    [aCoder encodeObject:_mid forKey:kZLRetweetedStatusMid];
    [aCoder encodeObject:_cardid forKey:kZLRetweetedStatusCardid];
    [aCoder encodeDouble:_repostsCount forKey:kZLRetweetedStatusRepostsCount];
    [aCoder encodeDouble:_userType forKey:kZLRetweetedStatusUserType];
    [aCoder encodeDouble:_attitudesCount forKey:kZLRetweetedStatusAttitudesCount];
    [aCoder encodeObject:_darwinTags forKey:kZLRetweetedStatusDarwinTags];
    [aCoder encodeDouble:_mlevel forKey:kZLRetweetedStatusMlevel];
    [aCoder encodeObject:_inReplyToUserId forKey:kZLRetweetedStatusInReplyToUserId];
    [aCoder encodeObject:_picStatus forKey:kZLRetweetedStatusPicStatus];
    [aCoder encodeObject:_originalPic forKey:kZLRetweetedStatusOriginalPic];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLRetweetedStatus *copy = [[ZLRetweetedStatus alloc] init];
    
    if (copy) {

        copy.favorited = self.favorited;
        copy.truncated = self.truncated;
        copy.retweetedStatusIdentifier = self.retweetedStatusIdentifier;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.extendInfo = [self.extendInfo copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.geo = [self.geo copyWithZone:zone];
        copy.pageType = self.pageType;
        copy.user = [self.user copyWithZone:zone];
        copy.textTagTips = [self.textTagTips copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.thumbnailPic = [self.thumbnailPic copyWithZone:zone];
        copy.source = [self.source copyWithZone:zone];
        copy.sourceAllowclick = self.sourceAllowclick;
        copy.bizFeature = self.bizFeature;
        copy.annotations = [self.annotations copyWithZone:zone];
        copy.positiveRecomFlag = self.positiveRecomFlag;
        copy.bmiddlePic = [self.bmiddlePic copyWithZone:zone];
        copy.visible = [self.visible copyWithZone:zone];
        copy.bizIds = [self.bizIds copyWithZone:zone];
        copy.inReplyToStatusId = [self.inReplyToStatusId copyWithZone:zone];
        copy.mid = [self.mid copyWithZone:zone];
        copy.cardid = [self.cardid copyWithZone:zone];
        copy.repostsCount = self.repostsCount;
        copy.userType = self.userType;
        copy.attitudesCount = self.attitudesCount;
        copy.darwinTags = [self.darwinTags copyWithZone:zone];
        copy.mlevel = self.mlevel;
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.picStatus = [self.picStatus copyWithZone:zone];
        copy.originalPic = [self.originalPic copyWithZone:zone];
    }
    
    return copy;
}


@end
