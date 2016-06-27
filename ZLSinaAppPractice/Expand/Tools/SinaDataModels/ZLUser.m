//
//  ZLUser.m
//
//  Created by   on 16/6/17
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "ZLUser.h"


NSString *const kZLUserCoverImagePhone = @"cover_image_phone";
NSString *const kZLUserId = @"id";
NSString *const kZLUserBiFollowersCount = @"bi_followers_count";
NSString *const kZLUserUrank = @"urank";
NSString *const kZLUserProfileImageUrl = @"profile_image_url";
NSString *const kZLUserClass = @"class";
NSString *const kZLUserVerifiedContactEmail = @"verified_contact_email";
NSString *const kZLUserProvince = @"province";
NSString *const kZLUserAbilityTags = @"ability_tags";
NSString *const kZLUserAvatargjId = @"avatargj_id";
NSString *const kZLUserVerified = @"verified";
NSString *const kZLUserGeoEnabled = @"geo_enabled";
NSString *const kZLUserUrl = @"url";
NSString *const kZLUserFollowMe = @"follow_me";
NSString *const kZLUserStatusesCount = @"statuses_count";
NSString *const kZLUserDescription = @"description";
NSString *const kZLUserFollowersCount = @"followers_count";
NSString *const kZLUserVerifiedContactMobile = @"verified_contact_mobile";
NSString *const kZLUserLocation = @"location";
NSString *const kZLUserMbrank = @"mbrank";
NSString *const kZLUserAvatarLarge = @"avatar_large";
NSString *const kZLUserStar = @"star";
NSString *const kZLUserVerifiedTrade = @"verified_trade";
NSString *const kZLUserWeihao = @"weihao";
NSString *const kZLUserCoverImage = @"cover_image";
NSString *const kZLUserOnlineStatus = @"online_status";
NSString *const kZLUserProfileUrl = @"profile_url";
NSString *const kZLUserVerifiedContactName = @"verified_contact_name";
NSString *const kZLUserVerifiedSourceUrl = @"verified_source_url";
NSString *const kZLUserScreenName = @"screen_name";
NSString *const kZLUserPagefriendsCount = @"pagefriends_count";
NSString *const kZLUserVerifiedReason = @"verified_reason";
NSString *const kZLUserName = @"name";
NSString *const kZLUserFriendsCount = @"friends_count";
NSString *const kZLUserMbtype = @"mbtype";
NSString *const kZLUserBlockApp = @"block_app";
NSString *const kZLUserAvatarHd = @"avatar_hd";
NSString *const kZLUserCreditScore = @"credit_score";
NSString *const kZLUserRemark = @"remark";
NSString *const kZLUserCreatedAt = @"created_at";
NSString *const kZLUserBlockWord = @"block_word";
NSString *const kZLUserAllowAllActMsg = @"allow_all_act_msg";
NSString *const kZLUserVerifiedState = @"verified_state";
NSString *const kZLUserDomain = @"domain";
NSString *const kZLUserVerifiedReasonModified = @"verified_reason_modified";
NSString *const kZLUserCardid = @"cardid";
NSString *const kZLUserAllowAllComment = @"allow_all_comment";
NSString *const kZLUserVerifiedLevel = @"verified_level";
NSString *const kZLUserVerifiedReasonUrl = @"verified_reason_url";
NSString *const kZLUserGender = @"gender";
NSString *const kZLUserFavouritesCount = @"favourites_count";
NSString *const kZLUserIdstr = @"idstr";
NSString *const kZLUserVerifiedType = @"verified_type";
NSString *const kZLUserCity = @"city";
NSString *const kZLUserVerifiedSource = @"verified_source";
NSString *const kZLUserVerifiedTypeExt = @"verified_type_ext";
NSString *const kZLUserUserAbility = @"user_ability";
NSString *const kZLUserLang = @"lang";
NSString *const kZLUserPtype = @"ptype";
NSString *const kZLUserFollowing = @"following";


@interface ZLUser ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ZLUser

@synthesize coverImagePhone = _coverImagePhone;
@synthesize userIdentifier = _userIdentifier;
@synthesize biFollowersCount = _biFollowersCount;
@synthesize urank = _urank;
@synthesize profileImageUrl = _profileImageUrl;
@synthesize classProperty = _classProperty;
@synthesize verifiedContactEmail = _verifiedContactEmail;
@synthesize province = _province;
@synthesize abilityTags = _abilityTags;
@synthesize avatargjId = _avatargjId;
@synthesize verified = _verified;
@synthesize geoEnabled = _geoEnabled;
@synthesize url = _url;
@synthesize followMe = _followMe;
@synthesize statusesCount = _statusesCount;
@synthesize userDescription = _userDescription;
@synthesize followersCount = _followersCount;
@synthesize verifiedContactMobile = _verifiedContactMobile;
@synthesize location = _location;
@synthesize mbrank = _mbrank;
@synthesize avatarLarge = _avatarLarge;
@synthesize star = _star;
@synthesize verifiedTrade = _verifiedTrade;
@synthesize weihao = _weihao;
@synthesize coverImage = _coverImage;
@synthesize onlineStatus = _onlineStatus;
@synthesize profileUrl = _profileUrl;
@synthesize verifiedContactName = _verifiedContactName;
@synthesize verifiedSourceUrl = _verifiedSourceUrl;
@synthesize screenName = _screenName;
@synthesize pagefriendsCount = _pagefriendsCount;
@synthesize verifiedReason = _verifiedReason;
@synthesize name = _name;
@synthesize friendsCount = _friendsCount;
@synthesize mbtype = _mbtype;
@synthesize blockApp = _blockApp;
@synthesize avatarHd = _avatarHd;
@synthesize creditScore = _creditScore;
@synthesize remark = _remark;
@synthesize createdAt = _createdAt;
@synthesize blockWord = _blockWord;
@synthesize allowAllActMsg = _allowAllActMsg;
@synthesize verifiedState = _verifiedState;
@synthesize domain = _domain;
@synthesize verifiedReasonModified = _verifiedReasonModified;
@synthesize cardid = _cardid;
@synthesize allowAllComment = _allowAllComment;
@synthesize verifiedLevel = _verifiedLevel;
@synthesize verifiedReasonUrl = _verifiedReasonUrl;
@synthesize gender = _gender;
@synthesize favouritesCount = _favouritesCount;
@synthesize idstr = _idstr;
@synthesize verifiedType = _verifiedType;
@synthesize city = _city;
@synthesize verifiedSource = _verifiedSource;
@synthesize verifiedTypeExt = _verifiedTypeExt;
@synthesize userAbility = _userAbility;
@synthesize lang = _lang;
@synthesize ptype = _ptype;
@synthesize following = _following;


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
            self.coverImagePhone = [self objectOrNilForKey:kZLUserCoverImagePhone fromDictionary:dict];
            self.userIdentifier = [[self objectOrNilForKey:kZLUserId fromDictionary:dict] doubleValue];
            self.biFollowersCount = [[self objectOrNilForKey:kZLUserBiFollowersCount fromDictionary:dict] doubleValue];
            self.urank = [[self objectOrNilForKey:kZLUserUrank fromDictionary:dict] doubleValue];
            self.profileImageUrl = [self objectOrNilForKey:kZLUserProfileImageUrl fromDictionary:dict];
            self.classProperty = [[self objectOrNilForKey:kZLUserClass fromDictionary:dict] doubleValue];
            self.verifiedContactEmail = [self objectOrNilForKey:kZLUserVerifiedContactEmail fromDictionary:dict];
            self.province = [self objectOrNilForKey:kZLUserProvince fromDictionary:dict];
            self.abilityTags = [self objectOrNilForKey:kZLUserAbilityTags fromDictionary:dict];
            self.avatargjId = [self objectOrNilForKey:kZLUserAvatargjId fromDictionary:dict];
            self.verified = [[self objectOrNilForKey:kZLUserVerified fromDictionary:dict] boolValue];
            self.geoEnabled = [[self objectOrNilForKey:kZLUserGeoEnabled fromDictionary:dict] boolValue];
            self.url = [self objectOrNilForKey:kZLUserUrl fromDictionary:dict];
            self.followMe = [[self objectOrNilForKey:kZLUserFollowMe fromDictionary:dict] boolValue];
            self.statusesCount = [[self objectOrNilForKey:kZLUserStatusesCount fromDictionary:dict] doubleValue];
            self.userDescription = [self objectOrNilForKey:kZLUserDescription fromDictionary:dict];
            self.followersCount = [[self objectOrNilForKey:kZLUserFollowersCount fromDictionary:dict] doubleValue];
            self.verifiedContactMobile = [self objectOrNilForKey:kZLUserVerifiedContactMobile fromDictionary:dict];
            self.location = [self objectOrNilForKey:kZLUserLocation fromDictionary:dict];
            self.mbrank = [[self objectOrNilForKey:kZLUserMbrank fromDictionary:dict] doubleValue];
            self.avatarLarge = [self objectOrNilForKey:kZLUserAvatarLarge fromDictionary:dict];
            self.star = [[self objectOrNilForKey:kZLUserStar fromDictionary:dict] doubleValue];
            self.verifiedTrade = [self objectOrNilForKey:kZLUserVerifiedTrade fromDictionary:dict];
            self.weihao = [self objectOrNilForKey:kZLUserWeihao fromDictionary:dict];
            self.coverImage = [self objectOrNilForKey:kZLUserCoverImage fromDictionary:dict];
            self.onlineStatus = [[self objectOrNilForKey:kZLUserOnlineStatus fromDictionary:dict] doubleValue];
            self.profileUrl = [self objectOrNilForKey:kZLUserProfileUrl fromDictionary:dict];
            self.verifiedContactName = [self objectOrNilForKey:kZLUserVerifiedContactName fromDictionary:dict];
            self.verifiedSourceUrl = [self objectOrNilForKey:kZLUserVerifiedSourceUrl fromDictionary:dict];
            self.screenName = [self objectOrNilForKey:kZLUserScreenName fromDictionary:dict];
            self.pagefriendsCount = [[self objectOrNilForKey:kZLUserPagefriendsCount fromDictionary:dict] doubleValue];
            self.verifiedReason = [self objectOrNilForKey:kZLUserVerifiedReason fromDictionary:dict];
            self.name = [self objectOrNilForKey:kZLUserName fromDictionary:dict];
            self.friendsCount = [[self objectOrNilForKey:kZLUserFriendsCount fromDictionary:dict] doubleValue];
            self.mbtype = [[self objectOrNilForKey:kZLUserMbtype fromDictionary:dict] doubleValue];
            self.blockApp = [[self objectOrNilForKey:kZLUserBlockApp fromDictionary:dict] doubleValue];
            self.avatarHd = [self objectOrNilForKey:kZLUserAvatarHd fromDictionary:dict];
            self.creditScore = [[self objectOrNilForKey:kZLUserCreditScore fromDictionary:dict] doubleValue];
            self.remark = [self objectOrNilForKey:kZLUserRemark fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kZLUserCreatedAt fromDictionary:dict];
            self.blockWord = [[self objectOrNilForKey:kZLUserBlockWord fromDictionary:dict] doubleValue];
            self.allowAllActMsg = [[self objectOrNilForKey:kZLUserAllowAllActMsg fromDictionary:dict] boolValue];
            self.verifiedState = [[self objectOrNilForKey:kZLUserVerifiedState fromDictionary:dict] doubleValue];
            self.domain = [self objectOrNilForKey:kZLUserDomain fromDictionary:dict];
            self.verifiedReasonModified = [self objectOrNilForKey:kZLUserVerifiedReasonModified fromDictionary:dict];
            self.cardid = [self objectOrNilForKey:kZLUserCardid fromDictionary:dict];
            self.allowAllComment = [[self objectOrNilForKey:kZLUserAllowAllComment fromDictionary:dict] boolValue];
            self.verifiedLevel = [[self objectOrNilForKey:kZLUserVerifiedLevel fromDictionary:dict] doubleValue];
            self.verifiedReasonUrl = [self objectOrNilForKey:kZLUserVerifiedReasonUrl fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kZLUserGender fromDictionary:dict];
            self.favouritesCount = [[self objectOrNilForKey:kZLUserFavouritesCount fromDictionary:dict] doubleValue];
            self.idstr = [self objectOrNilForKey:kZLUserIdstr fromDictionary:dict];
            self.verifiedType = [[self objectOrNilForKey:kZLUserVerifiedType fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kZLUserCity fromDictionary:dict];
            self.verifiedSource = [self objectOrNilForKey:kZLUserVerifiedSource fromDictionary:dict];
            self.verifiedTypeExt = [[self objectOrNilForKey:kZLUserVerifiedTypeExt fromDictionary:dict] doubleValue];
            self.userAbility = [[self objectOrNilForKey:kZLUserUserAbility fromDictionary:dict] doubleValue];
            self.lang = [self objectOrNilForKey:kZLUserLang fromDictionary:dict];
            self.ptype = [[self objectOrNilForKey:kZLUserPtype fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kZLUserFollowing fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.coverImagePhone forKey:kZLUserCoverImagePhone];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userIdentifier] forKey:kZLUserId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.biFollowersCount] forKey:kZLUserBiFollowersCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urank] forKey:kZLUserUrank];
    [mutableDict setValue:self.profileImageUrl forKey:kZLUserProfileImageUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.classProperty] forKey:kZLUserClass];
    [mutableDict setValue:self.verifiedContactEmail forKey:kZLUserVerifiedContactEmail];
    [mutableDict setValue:self.province forKey:kZLUserProvince];
    [mutableDict setValue:self.abilityTags forKey:kZLUserAbilityTags];
    [mutableDict setValue:self.avatargjId forKey:kZLUserAvatargjId];
    [mutableDict setValue:[NSNumber numberWithBool:self.verified] forKey:kZLUserVerified];
    [mutableDict setValue:[NSNumber numberWithBool:self.geoEnabled] forKey:kZLUserGeoEnabled];
    [mutableDict setValue:self.url forKey:kZLUserUrl];
    [mutableDict setValue:[NSNumber numberWithBool:self.followMe] forKey:kZLUserFollowMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesCount] forKey:kZLUserStatusesCount];
    [mutableDict setValue:self.userDescription forKey:kZLUserDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followersCount] forKey:kZLUserFollowersCount];
    [mutableDict setValue:self.verifiedContactMobile forKey:kZLUserVerifiedContactMobile];
    [mutableDict setValue:self.location forKey:kZLUserLocation];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbrank] forKey:kZLUserMbrank];
    [mutableDict setValue:self.avatarLarge forKey:kZLUserAvatarLarge];
    [mutableDict setValue:[NSNumber numberWithDouble:self.star] forKey:kZLUserStar];
    [mutableDict setValue:self.verifiedTrade forKey:kZLUserVerifiedTrade];
    [mutableDict setValue:self.weihao forKey:kZLUserWeihao];
    [mutableDict setValue:self.coverImage forKey:kZLUserCoverImage];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineStatus] forKey:kZLUserOnlineStatus];
    [mutableDict setValue:self.profileUrl forKey:kZLUserProfileUrl];
    [mutableDict setValue:self.verifiedContactName forKey:kZLUserVerifiedContactName];
    [mutableDict setValue:self.verifiedSourceUrl forKey:kZLUserVerifiedSourceUrl];
    [mutableDict setValue:self.screenName forKey:kZLUserScreenName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pagefriendsCount] forKey:kZLUserPagefriendsCount];
    [mutableDict setValue:self.verifiedReason forKey:kZLUserVerifiedReason];
    [mutableDict setValue:self.name forKey:kZLUserName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.friendsCount] forKey:kZLUserFriendsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbtype] forKey:kZLUserMbtype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockApp] forKey:kZLUserBlockApp];
    [mutableDict setValue:self.avatarHd forKey:kZLUserAvatarHd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creditScore] forKey:kZLUserCreditScore];
    [mutableDict setValue:self.remark forKey:kZLUserRemark];
    [mutableDict setValue:self.createdAt forKey:kZLUserCreatedAt];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockWord] forKey:kZLUserBlockWord];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllActMsg] forKey:kZLUserAllowAllActMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedState] forKey:kZLUserVerifiedState];
    [mutableDict setValue:self.domain forKey:kZLUserDomain];
    [mutableDict setValue:self.verifiedReasonModified forKey:kZLUserVerifiedReasonModified];
    [mutableDict setValue:self.cardid forKey:kZLUserCardid];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllComment] forKey:kZLUserAllowAllComment];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedLevel] forKey:kZLUserVerifiedLevel];
    [mutableDict setValue:self.verifiedReasonUrl forKey:kZLUserVerifiedReasonUrl];
    [mutableDict setValue:self.gender forKey:kZLUserGender];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favouritesCount] forKey:kZLUserFavouritesCount];
    [mutableDict setValue:self.idstr forKey:kZLUserIdstr];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedType] forKey:kZLUserVerifiedType];
    [mutableDict setValue:self.city forKey:kZLUserCity];
    [mutableDict setValue:self.verifiedSource forKey:kZLUserVerifiedSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedTypeExt] forKey:kZLUserVerifiedTypeExt];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userAbility] forKey:kZLUserUserAbility];
    [mutableDict setValue:self.lang forKey:kZLUserLang];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ptype] forKey:kZLUserPtype];
    [mutableDict setValue:[NSNumber numberWithBool:self.following] forKey:kZLUserFollowing];

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

    self.coverImagePhone = [aDecoder decodeObjectForKey:kZLUserCoverImagePhone];
    self.userIdentifier = [aDecoder decodeDoubleForKey:kZLUserId];
    self.biFollowersCount = [aDecoder decodeDoubleForKey:kZLUserBiFollowersCount];
    self.urank = [aDecoder decodeDoubleForKey:kZLUserUrank];
    self.profileImageUrl = [aDecoder decodeObjectForKey:kZLUserProfileImageUrl];
    self.classProperty = [aDecoder decodeDoubleForKey:kZLUserClass];
    self.verifiedContactEmail = [aDecoder decodeObjectForKey:kZLUserVerifiedContactEmail];
    self.province = [aDecoder decodeObjectForKey:kZLUserProvince];
    self.abilityTags = [aDecoder decodeObjectForKey:kZLUserAbilityTags];
    self.avatargjId = [aDecoder decodeObjectForKey:kZLUserAvatargjId];
    self.verified = [aDecoder decodeBoolForKey:kZLUserVerified];
    self.geoEnabled = [aDecoder decodeBoolForKey:kZLUserGeoEnabled];
    self.url = [aDecoder decodeObjectForKey:kZLUserUrl];
    self.followMe = [aDecoder decodeBoolForKey:kZLUserFollowMe];
    self.statusesCount = [aDecoder decodeDoubleForKey:kZLUserStatusesCount];
    self.userDescription = [aDecoder decodeObjectForKey:kZLUserDescription];
    self.followersCount = [aDecoder decodeDoubleForKey:kZLUserFollowersCount];
    self.verifiedContactMobile = [aDecoder decodeObjectForKey:kZLUserVerifiedContactMobile];
    self.location = [aDecoder decodeObjectForKey:kZLUserLocation];
    self.mbrank = [aDecoder decodeDoubleForKey:kZLUserMbrank];
    self.avatarLarge = [aDecoder decodeObjectForKey:kZLUserAvatarLarge];
    self.star = [aDecoder decodeDoubleForKey:kZLUserStar];
    self.verifiedTrade = [aDecoder decodeObjectForKey:kZLUserVerifiedTrade];
    self.weihao = [aDecoder decodeObjectForKey:kZLUserWeihao];
    self.coverImage = [aDecoder decodeObjectForKey:kZLUserCoverImage];
    self.onlineStatus = [aDecoder decodeDoubleForKey:kZLUserOnlineStatus];
    self.profileUrl = [aDecoder decodeObjectForKey:kZLUserProfileUrl];
    self.verifiedContactName = [aDecoder decodeObjectForKey:kZLUserVerifiedContactName];
    self.verifiedSourceUrl = [aDecoder decodeObjectForKey:kZLUserVerifiedSourceUrl];
    self.screenName = [aDecoder decodeObjectForKey:kZLUserScreenName];
    self.pagefriendsCount = [aDecoder decodeDoubleForKey:kZLUserPagefriendsCount];
    self.verifiedReason = [aDecoder decodeObjectForKey:kZLUserVerifiedReason];
    self.name = [aDecoder decodeObjectForKey:kZLUserName];
    self.friendsCount = [aDecoder decodeDoubleForKey:kZLUserFriendsCount];
    self.mbtype = [aDecoder decodeDoubleForKey:kZLUserMbtype];
    self.blockApp = [aDecoder decodeDoubleForKey:kZLUserBlockApp];
    self.avatarHd = [aDecoder decodeObjectForKey:kZLUserAvatarHd];
    self.creditScore = [aDecoder decodeDoubleForKey:kZLUserCreditScore];
    self.remark = [aDecoder decodeObjectForKey:kZLUserRemark];
    self.createdAt = [aDecoder decodeObjectForKey:kZLUserCreatedAt];
    self.blockWord = [aDecoder decodeDoubleForKey:kZLUserBlockWord];
    self.allowAllActMsg = [aDecoder decodeBoolForKey:kZLUserAllowAllActMsg];
    self.verifiedState = [aDecoder decodeDoubleForKey:kZLUserVerifiedState];
    self.domain = [aDecoder decodeObjectForKey:kZLUserDomain];
    self.verifiedReasonModified = [aDecoder decodeObjectForKey:kZLUserVerifiedReasonModified];
    self.cardid = [aDecoder decodeObjectForKey:kZLUserCardid];
    self.allowAllComment = [aDecoder decodeBoolForKey:kZLUserAllowAllComment];
    self.verifiedLevel = [aDecoder decodeDoubleForKey:kZLUserVerifiedLevel];
    self.verifiedReasonUrl = [aDecoder decodeObjectForKey:kZLUserVerifiedReasonUrl];
    self.gender = [aDecoder decodeObjectForKey:kZLUserGender];
    self.favouritesCount = [aDecoder decodeDoubleForKey:kZLUserFavouritesCount];
    self.idstr = [aDecoder decodeObjectForKey:kZLUserIdstr];
    self.verifiedType = [aDecoder decodeDoubleForKey:kZLUserVerifiedType];
    self.city = [aDecoder decodeObjectForKey:kZLUserCity];
    self.verifiedSource = [aDecoder decodeObjectForKey:kZLUserVerifiedSource];
    self.verifiedTypeExt = [aDecoder decodeDoubleForKey:kZLUserVerifiedTypeExt];
    self.userAbility = [aDecoder decodeDoubleForKey:kZLUserUserAbility];
    self.lang = [aDecoder decodeObjectForKey:kZLUserLang];
    self.ptype = [aDecoder decodeDoubleForKey:kZLUserPtype];
    self.following = [aDecoder decodeBoolForKey:kZLUserFollowing];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_coverImagePhone forKey:kZLUserCoverImagePhone];
    [aCoder encodeDouble:_userIdentifier forKey:kZLUserId];
    [aCoder encodeDouble:_biFollowersCount forKey:kZLUserBiFollowersCount];
    [aCoder encodeDouble:_urank forKey:kZLUserUrank];
    [aCoder encodeObject:_profileImageUrl forKey:kZLUserProfileImageUrl];
    [aCoder encodeDouble:_classProperty forKey:kZLUserClass];
    [aCoder encodeObject:_verifiedContactEmail forKey:kZLUserVerifiedContactEmail];
    [aCoder encodeObject:_province forKey:kZLUserProvince];
    [aCoder encodeObject:_abilityTags forKey:kZLUserAbilityTags];
    [aCoder encodeObject:_avatargjId forKey:kZLUserAvatargjId];
    [aCoder encodeBool:_verified forKey:kZLUserVerified];
    [aCoder encodeBool:_geoEnabled forKey:kZLUserGeoEnabled];
    [aCoder encodeObject:_url forKey:kZLUserUrl];
    [aCoder encodeBool:_followMe forKey:kZLUserFollowMe];
    [aCoder encodeDouble:_statusesCount forKey:kZLUserStatusesCount];
    [aCoder encodeObject:_userDescription forKey:kZLUserDescription];
    [aCoder encodeDouble:_followersCount forKey:kZLUserFollowersCount];
    [aCoder encodeObject:_verifiedContactMobile forKey:kZLUserVerifiedContactMobile];
    [aCoder encodeObject:_location forKey:kZLUserLocation];
    [aCoder encodeDouble:_mbrank forKey:kZLUserMbrank];
    [aCoder encodeObject:_avatarLarge forKey:kZLUserAvatarLarge];
    [aCoder encodeDouble:_star forKey:kZLUserStar];
    [aCoder encodeObject:_verifiedTrade forKey:kZLUserVerifiedTrade];
    [aCoder encodeObject:_weihao forKey:kZLUserWeihao];
    [aCoder encodeObject:_coverImage forKey:kZLUserCoverImage];
    [aCoder encodeDouble:_onlineStatus forKey:kZLUserOnlineStatus];
    [aCoder encodeObject:_profileUrl forKey:kZLUserProfileUrl];
    [aCoder encodeObject:_verifiedContactName forKey:kZLUserVerifiedContactName];
    [aCoder encodeObject:_verifiedSourceUrl forKey:kZLUserVerifiedSourceUrl];
    [aCoder encodeObject:_screenName forKey:kZLUserScreenName];
    [aCoder encodeDouble:_pagefriendsCount forKey:kZLUserPagefriendsCount];
    [aCoder encodeObject:_verifiedReason forKey:kZLUserVerifiedReason];
    [aCoder encodeObject:_name forKey:kZLUserName];
    [aCoder encodeDouble:_friendsCount forKey:kZLUserFriendsCount];
    [aCoder encodeDouble:_mbtype forKey:kZLUserMbtype];
    [aCoder encodeDouble:_blockApp forKey:kZLUserBlockApp];
    [aCoder encodeObject:_avatarHd forKey:kZLUserAvatarHd];
    [aCoder encodeDouble:_creditScore forKey:kZLUserCreditScore];
    [aCoder encodeObject:_remark forKey:kZLUserRemark];
    [aCoder encodeObject:_createdAt forKey:kZLUserCreatedAt];
    [aCoder encodeDouble:_blockWord forKey:kZLUserBlockWord];
    [aCoder encodeBool:_allowAllActMsg forKey:kZLUserAllowAllActMsg];
    [aCoder encodeDouble:_verifiedState forKey:kZLUserVerifiedState];
    [aCoder encodeObject:_domain forKey:kZLUserDomain];
    [aCoder encodeObject:_verifiedReasonModified forKey:kZLUserVerifiedReasonModified];
    [aCoder encodeObject:_cardid forKey:kZLUserCardid];
    [aCoder encodeBool:_allowAllComment forKey:kZLUserAllowAllComment];
    [aCoder encodeDouble:_verifiedLevel forKey:kZLUserVerifiedLevel];
    [aCoder encodeObject:_verifiedReasonUrl forKey:kZLUserVerifiedReasonUrl];
    [aCoder encodeObject:_gender forKey:kZLUserGender];
    [aCoder encodeDouble:_favouritesCount forKey:kZLUserFavouritesCount];
    [aCoder encodeObject:_idstr forKey:kZLUserIdstr];
    [aCoder encodeDouble:_verifiedType forKey:kZLUserVerifiedType];
    [aCoder encodeObject:_city forKey:kZLUserCity];
    [aCoder encodeObject:_verifiedSource forKey:kZLUserVerifiedSource];
    [aCoder encodeDouble:_verifiedTypeExt forKey:kZLUserVerifiedTypeExt];
    [aCoder encodeDouble:_userAbility forKey:kZLUserUserAbility];
    [aCoder encodeObject:_lang forKey:kZLUserLang];
    [aCoder encodeDouble:_ptype forKey:kZLUserPtype];
    [aCoder encodeBool:_following forKey:kZLUserFollowing];
}

- (id)copyWithZone:(NSZone *)zone
{
    ZLUser *copy = [[ZLUser alloc] init];
    
    if (copy) {

        copy.coverImagePhone = [self.coverImagePhone copyWithZone:zone];
        copy.userIdentifier = self.userIdentifier;
        copy.biFollowersCount = self.biFollowersCount;
        copy.urank = self.urank;
        copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
        copy.classProperty = self.classProperty;
        copy.verifiedContactEmail = [self.verifiedContactEmail copyWithZone:zone];
        copy.province = [self.province copyWithZone:zone];
        copy.abilityTags = [self.abilityTags copyWithZone:zone];
        copy.avatargjId = [self.avatargjId copyWithZone:zone];
        copy.verified = self.verified;
        copy.geoEnabled = self.geoEnabled;
        copy.url = [self.url copyWithZone:zone];
        copy.followMe = self.followMe;
        copy.statusesCount = self.statusesCount;
        copy.userDescription = [self.userDescription copyWithZone:zone];
        copy.followersCount = self.followersCount;
        copy.verifiedContactMobile = [self.verifiedContactMobile copyWithZone:zone];
        copy.location = [self.location copyWithZone:zone];
        copy.mbrank = self.mbrank;
        copy.avatarLarge = [self.avatarLarge copyWithZone:zone];
        copy.star = self.star;
        copy.verifiedTrade = [self.verifiedTrade copyWithZone:zone];
        copy.weihao = [self.weihao copyWithZone:zone];
        copy.coverImage = [self.coverImage copyWithZone:zone];
        copy.onlineStatus = self.onlineStatus;
        copy.profileUrl = [self.profileUrl copyWithZone:zone];
        copy.verifiedContactName = [self.verifiedContactName copyWithZone:zone];
        copy.verifiedSourceUrl = [self.verifiedSourceUrl copyWithZone:zone];
        copy.screenName = [self.screenName copyWithZone:zone];
        copy.pagefriendsCount = self.pagefriendsCount;
        copy.verifiedReason = [self.verifiedReason copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.friendsCount = self.friendsCount;
        copy.mbtype = self.mbtype;
        copy.blockApp = self.blockApp;
        copy.avatarHd = [self.avatarHd copyWithZone:zone];
        copy.creditScore = self.creditScore;
        copy.remark = [self.remark copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.blockWord = self.blockWord;
        copy.allowAllActMsg = self.allowAllActMsg;
        copy.verifiedState = self.verifiedState;
        copy.domain = [self.domain copyWithZone:zone];
        copy.verifiedReasonModified = [self.verifiedReasonModified copyWithZone:zone];
        copy.cardid = [self.cardid copyWithZone:zone];
        copy.allowAllComment = self.allowAllComment;
        copy.verifiedLevel = self.verifiedLevel;
        copy.verifiedReasonUrl = [self.verifiedReasonUrl copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.favouritesCount = self.favouritesCount;
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.verifiedType = self.verifiedType;
        copy.city = [self.city copyWithZone:zone];
        copy.verifiedSource = [self.verifiedSource copyWithZone:zone];
        copy.verifiedTypeExt = self.verifiedTypeExt;
        copy.userAbility = self.userAbility;
        copy.lang = [self.lang copyWithZone:zone];
        copy.ptype = self.ptype;
        copy.following = self.following;
    }
    
    return copy;
}


@end
