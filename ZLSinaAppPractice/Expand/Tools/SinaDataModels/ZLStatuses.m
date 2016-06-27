//
//  ZLStatuses.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLStatuses.h"
#import "ZLPicUrls.h"
#import "ZLRetweetedStatus.h"
#import "ZLUser.h"
#import "ZLAnnotations.h"
#import "ZLVisible.h"


NSString *const kZLStatusesFavorited = @"favorited";
NSString *const kZLStatusesTruncated = @"truncated";
NSString *const kZLStatusesId = @"id";
NSString *const kZLStatusesCreatedAt = @"created_at";
NSString *const kZLStatusesInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kZLStatusesIsLongText = @"isLongText";
NSString *const kZLStatusesPicUrls = @"pic_urls";
NSString *const kZLStatusesText = @"text";
NSString *const kZLStatusesIdstr = @"idstr";
NSString *const kZLStatusesTextLength = @"textLength";
NSString *const kZLStatusesSourceType = @"source_type";
NSString *const kZLStatusesHotWeiboTags = @"hot_weibo_tags";
NSString *const kZLStatusesPageType = @"page_type";
NSString *const kZLStatusesGeo = @"geo";
NSString *const kZLStatusesRetweetedStatus = @"retweeted_status";
NSString *const kZLStatusesUser = @"user";
NSString *const kZLStatusesTextTagTips = @"text_tag_tips";
NSString *const kZLStatusesCommentsCount = @"comments_count";
NSString *const kZLStatusesThumbnailPic = @"thumbnail_pic";
NSString *const kZLStatusesSource = @"source";
NSString *const kZLStatusesSourceAllowclick = @"source_allowclick";
NSString *const kZLStatusesBizFeature = @"biz_feature";
NSString *const kZLStatusesAnnotations = @"annotations";
NSString *const kZLStatusesPositiveRecomFlag = @"positive_recom_flag";
NSString *const kZLStatusesBmiddlePic = @"bmiddle_pic";
NSString *const kZLStatusesVisible = @"visible";
NSString *const kZLStatusesBizIds = @"biz_ids";
NSString *const kZLStatusesInReplyToStatusId = @"in_reply_to_status_id";
NSString *const kZLStatusesMid = @"mid";
NSString *const kZLStatusesCardid = @"cardid";
NSString *const kZLStatusesRepostsCount = @"reposts_count";
NSString *const kZLStatusesUserType = @"userType";
NSString *const kZLStatusesAttitudesCount = @"attitudes_count";
NSString *const kZLStatusesDarwinTags = @"darwin_tags";
NSString *const kZLStatusesMlevel = @"mlevel";
NSString *const kZLStatusesRid = @"rid";
NSString *const kZLStatusesInReplyToUserId = @"in_reply_to_user_id";
NSString *const kZLStatusesOriginalPic = @"original_pic";


@interface ZLStatuses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLStatuses

@synthesize favorited = _favorited;
@synthesize truncated = _truncated;
@synthesize statusesIdentifier = _statusesIdentifier;
@synthesize createdAt = _createdAt;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize isLongText = _isLongText;
@synthesize picUrls = _picUrls;
@synthesize text = _text;
@synthesize idstr = _idstr;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize pageType = _pageType;
@synthesize geo = _geo;
@synthesize retweetedStatus = _retweetedStatus;
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
@synthesize rid = _rid;
@synthesize inReplyToUserId = _inReplyToUserId;
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
            self.favorited = [[self objectOrNilForKey:kZLStatusesFavorited fromDictionary:dict] boolValue];
            self.truncated = [[self objectOrNilForKey:kZLStatusesTruncated fromDictionary:dict] boolValue];
            self.statusesIdentifier = [[self objectOrNilForKey:kZLStatusesId fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kZLStatusesCreatedAt fromDictionary:dict];
            self.inReplyToScreenName = [self objectOrNilForKey:kZLStatusesInReplyToScreenName fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kZLStatusesIsLongText fromDictionary:dict] boolValue];
    NSObject *receivedZLPicUrls = [dict objectForKey:kZLStatusesPicUrls];
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
            self.text = [self objectOrNilForKey:kZLStatusesText fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kZLStatusesIdstr fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kZLStatusesTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kZLStatusesSourceType fromDictionary:dict] doubleValue];
            self.hotWeiboTags = [self objectOrNilForKey:kZLStatusesHotWeiboTags fromDictionary:dict];
            self.pageType = [[self objectOrNilForKey:kZLStatusesPageType fromDictionary:dict] doubleValue];
            self.geo = [self objectOrNilForKey:kZLStatusesGeo fromDictionary:dict];
            self.retweetedStatus = [ZLRetweetedStatus modelObjectWithDictionary:[dict objectForKey:kZLStatusesRetweetedStatus]];
            self.user = [ZLUser modelObjectWithDictionary:[dict objectForKey:kZLStatusesUser]];
            self.textTagTips = [self objectOrNilForKey:kZLStatusesTextTagTips fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kZLStatusesCommentsCount fromDictionary:dict] doubleValue];
            self.thumbnailPic = [self objectOrNilForKey:kZLStatusesThumbnailPic fromDictionary:dict];
            self.source = [self objectOrNilForKey:kZLStatusesSource fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kZLStatusesSourceAllowclick fromDictionary:dict] doubleValue];
            self.bizFeature = [[self objectOrNilForKey:kZLStatusesBizFeature fromDictionary:dict] doubleValue];
    NSObject *receivedZLAnnotations = [dict objectForKey:kZLStatusesAnnotations];
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
            self.positiveRecomFlag = [[self objectOrNilForKey:kZLStatusesPositiveRecomFlag fromDictionary:dict] doubleValue];
            self.bmiddlePic = [self objectOrNilForKey:kZLStatusesBmiddlePic fromDictionary:dict];
            self.visible = [ZLVisible modelObjectWithDictionary:[dict objectForKey:kZLStatusesVisible]];
            self.bizIds = [self objectOrNilForKey:kZLStatusesBizIds fromDictionary:dict];
            self.inReplyToStatusId = [self objectOrNilForKey:kZLStatusesInReplyToStatusId fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kZLStatusesMid fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kZLStatusesCardid fromDictionary:dict];
            self.repostsCount = [[self objectOrNilForKey:kZLStatusesRepostsCount fromDictionary:dict] doubleValue];
            self.userType = [[self objectOrNilForKey:kZLStatusesUserType fromDictionary:dict] doubleValue];
            self.attitudesCount = [[self objectOrNilForKey:kZLStatusesAttitudesCount fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kZLStatusesDarwinTags fromDictionary:dict];
            self.mlevel = [[self objectOrNilForKey:kZLStatusesMlevel fromDictionary:dict] doubleValue];
            self.rid = [self objectOrNilForKey:kZLStatusesRid fromDictionary:dict];
            self.inReplyToUserId = [self objectOrNilForKey:kZLStatusesInReplyToUserId fromDictionary:dict];
            self.originalPic = [self objectOrNilForKey:kZLStatusesOriginalPic fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kZLStatusesFavorited];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kZLStatusesTruncated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesIdentifier] forKey:kZLStatusesId];
    [mutableDict setValue:self.createdAt forKey:kZLStatusesCreatedAt];
    [mutableDict setValue:self.inReplyToScreenName forKey:kZLStatusesInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kZLStatusesIsLongText];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kZLStatusesPicUrls];
    [mutableDict setValue:self.text forKey:kZLStatusesText];
    [mutableDict setValue:self.idstr forKey:kZLStatusesIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kZLStatusesTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kZLStatusesSourceType];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kZLStatusesHotWeiboTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kZLStatusesPageType];
    [mutableDict setValue:self.geo forKey:kZLStatusesGeo];
    [mutableDict setValue:[self.retweetedStatus dictionaryRepresentation] forKey:kZLStatusesRetweetedStatus];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kZLStatusesUser];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kZLStatusesTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kZLStatusesCommentsCount];
    [mutableDict setValue:self.thumbnailPic forKey:kZLStatusesThumbnailPic];
    [mutableDict setValue:self.source forKey:kZLStatusesSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kZLStatusesSourceAllowclick];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kZLStatusesBizFeature];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kZLStatusesAnnotations];
    [mutableDict setValue:[NSNumber numberWithDouble:self.positiveRecomFlag] forKey:kZLStatusesPositiveRecomFlag];
    [mutableDict setValue:self.bmiddlePic forKey:kZLStatusesBmiddlePic];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kZLStatusesVisible];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBizIds] forKey:kZLStatusesBizIds];
    [mutableDict setValue:self.inReplyToStatusId forKey:kZLStatusesInReplyToStatusId];
    [mutableDict setValue:self.mid forKey:kZLStatusesMid];
    [mutableDict setValue:self.cardid forKey:kZLStatusesCardid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kZLStatusesRepostsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kZLStatusesUserType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kZLStatusesAttitudesCount];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kZLStatusesDarwinTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kZLStatusesMlevel];
    [mutableDict setValue:self.rid forKey:kZLStatusesRid];
    [mutableDict setValue:self.inReplyToUserId forKey:kZLStatusesInReplyToUserId];
    [mutableDict setValue:self.originalPic forKey:kZLStatusesOriginalPic];

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

    self.favorited = [aDecoder decodeBoolForKey:kZLStatusesFavorited];
    self.truncated = [aDecoder decodeBoolForKey:kZLStatusesTruncated];
    self.statusesIdentifier = [aDecoder decodeDoubleForKey:kZLStatusesId];
    self.createdAt = [aDecoder decodeObjectForKey:kZLStatusesCreatedAt];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kZLStatusesInReplyToScreenName];
    self.isLongText = [aDecoder decodeBoolForKey:kZLStatusesIsLongText];
    self.picUrls = [aDecoder decodeObjectForKey:kZLStatusesPicUrls];
    self.text = [aDecoder decodeObjectForKey:kZLStatusesText];
    self.idstr = [aDecoder decodeObjectForKey:kZLStatusesIdstr];
    self.textLength = [aDecoder decodeDoubleForKey:kZLStatusesTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kZLStatusesSourceType];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kZLStatusesHotWeiboTags];
    self.pageType = [aDecoder decodeDoubleForKey:kZLStatusesPageType];
    self.geo = [aDecoder decodeObjectForKey:kZLStatusesGeo];
    self.retweetedStatus = [aDecoder decodeObjectForKey:kZLStatusesRetweetedStatus];
    self.user = [aDecoder decodeObjectForKey:kZLStatusesUser];
    self.textTagTips = [aDecoder decodeObjectForKey:kZLStatusesTextTagTips];
    self.commentsCount = [aDecoder decodeDoubleForKey:kZLStatusesCommentsCount];
    self.thumbnailPic = [aDecoder decodeObjectForKey:kZLStatusesThumbnailPic];
    self.source = [aDecoder decodeObjectForKey:kZLStatusesSource];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kZLStatusesSourceAllowclick];
    self.bizFeature = [aDecoder decodeDoubleForKey:kZLStatusesBizFeature];
    self.annotations = [aDecoder decodeObjectForKey:kZLStatusesAnnotations];
    self.positiveRecomFlag = [aDecoder decodeDoubleForKey:kZLStatusesPositiveRecomFlag];
    self.bmiddlePic = [aDecoder decodeObjectForKey:kZLStatusesBmiddlePic];
    self.visible = [aDecoder decodeObjectForKey:kZLStatusesVisible];
    self.bizIds = [aDecoder decodeObjectForKey:kZLStatusesBizIds];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kZLStatusesInReplyToStatusId];
    self.mid = [aDecoder decodeObjectForKey:kZLStatusesMid];
    self.cardid = [aDecoder decodeObjectForKey:kZLStatusesCardid];
    self.repostsCount = [aDecoder decodeDoubleForKey:kZLStatusesRepostsCount];
    self.userType = [aDecoder decodeDoubleForKey:kZLStatusesUserType];
    self.attitudesCount = [aDecoder decodeDoubleForKey:kZLStatusesAttitudesCount];
    self.darwinTags = [aDecoder decodeObjectForKey:kZLStatusesDarwinTags];
    self.mlevel = [aDecoder decodeDoubleForKey:kZLStatusesMlevel];
    self.rid = [aDecoder decodeObjectForKey:kZLStatusesRid];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kZLStatusesInReplyToUserId];
    self.originalPic = [aDecoder decodeObjectForKey:kZLStatusesOriginalPic];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_favorited forKey:kZLStatusesFavorited];
    [aCoder encodeBool:_truncated forKey:kZLStatusesTruncated];
    [aCoder encodeDouble:_statusesIdentifier forKey:kZLStatusesId];
    [aCoder encodeObject:_createdAt forKey:kZLStatusesCreatedAt];
    [aCoder encodeObject:_inReplyToScreenName forKey:kZLStatusesInReplyToScreenName];
    [aCoder encodeBool:_isLongText forKey:kZLStatusesIsLongText];
    [aCoder encodeObject:_picUrls forKey:kZLStatusesPicUrls];
    [aCoder encodeObject:_text forKey:kZLStatusesText];
    [aCoder encodeObject:_idstr forKey:kZLStatusesIdstr];
    [aCoder encodeDouble:_textLength forKey:kZLStatusesTextLength];
    [aCoder encodeDouble:_sourceType forKey:kZLStatusesSourceType];
    [aCoder encodeObject:_hotWeiboTags forKey:kZLStatusesHotWeiboTags];
    [aCoder encodeDouble:_pageType forKey:kZLStatusesPageType];
    [aCoder encodeObject:_geo forKey:kZLStatusesGeo];
    [aCoder encodeObject:_retweetedStatus forKey:kZLStatusesRetweetedStatus];
    [aCoder encodeObject:_user forKey:kZLStatusesUser];
    [aCoder encodeObject:_textTagTips forKey:kZLStatusesTextTagTips];
    [aCoder encodeDouble:_commentsCount forKey:kZLStatusesCommentsCount];
    [aCoder encodeObject:_thumbnailPic forKey:kZLStatusesThumbnailPic];
    [aCoder encodeObject:_source forKey:kZLStatusesSource];
    [aCoder encodeDouble:_sourceAllowclick forKey:kZLStatusesSourceAllowclick];
    [aCoder encodeDouble:_bizFeature forKey:kZLStatusesBizFeature];
    [aCoder encodeObject:_annotations forKey:kZLStatusesAnnotations];
    [aCoder encodeDouble:_positiveRecomFlag forKey:kZLStatusesPositiveRecomFlag];
    [aCoder encodeObject:_bmiddlePic forKey:kZLStatusesBmiddlePic];
    [aCoder encodeObject:_visible forKey:kZLStatusesVisible];
    [aCoder encodeObject:_bizIds forKey:kZLStatusesBizIds];
    [aCoder encodeObject:_inReplyToStatusId forKey:kZLStatusesInReplyToStatusId];
    [aCoder encodeObject:_mid forKey:kZLStatusesMid];
    [aCoder encodeObject:_cardid forKey:kZLStatusesCardid];
    [aCoder encodeDouble:_repostsCount forKey:kZLStatusesRepostsCount];
    [aCoder encodeDouble:_userType forKey:kZLStatusesUserType];
    [aCoder encodeDouble:_attitudesCount forKey:kZLStatusesAttitudesCount];
    [aCoder encodeObject:_darwinTags forKey:kZLStatusesDarwinTags];
    [aCoder encodeDouble:_mlevel forKey:kZLStatusesMlevel];
    [aCoder encodeObject:_rid forKey:kZLStatusesRid];
    [aCoder encodeObject:_inReplyToUserId forKey:kZLStatusesInReplyToUserId];
    [aCoder encodeObject:_originalPic forKey:kZLStatusesOriginalPic];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLStatuses *copy = [[ZLStatuses alloc] init];
    
    if (copy) {

        copy.favorited = self.favorited;
        copy.truncated = self.truncated;
        copy.statusesIdentifier = self.statusesIdentifier;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.pageType = self.pageType;
        copy.geo = [self.geo copyWithZone:zone];
        copy.retweetedStatus = [self.retweetedStatus copyWithZone:zone];
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
        copy.rid = [self.rid copyWithZone:zone];
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.originalPic = [self.originalPic copyWithZone:zone];
    }
    
    return copy;
}


@end
