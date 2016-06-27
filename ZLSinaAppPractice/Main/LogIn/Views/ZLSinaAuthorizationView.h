//
//  ZLSinaAuthorizationView.h
//  SinaAppPractice
//
//  Created by mac on 16/6/15.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZLSinaAuthorizationView;
@protocol ZLSinaAuthorizationViewDelegate <NSObject>
/** 传递code*/
-(void)sinaAuthorizationView:(ZLSinaAuthorizationView *)sinaAuthorizationView didGetCode:(NSString *)code;

@end
@interface ZLSinaAuthorizationView : UIView
@property(weak,nonatomic)id <ZLSinaAuthorizationViewDelegate>delegate;
- (void)addWebViewWithRequest:(NSURLRequest *)request;
@end
