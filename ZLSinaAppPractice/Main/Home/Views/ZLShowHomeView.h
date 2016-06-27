//
//  ZLShowHomeView.h
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZLShowHomeView;
@protocol ZLShowHomeViewDelegate <NSObject>

-(void)showHomeView:(ZLShowHomeView *)showHomeView RefreshAndLoadMoreWithTableView:(UITableView *)tableView;

@end
@class ZLRequestUserMessageModel;
@interface ZLShowHomeView : UIView

/** 装有模型的数组*/
@property(strong,nonatomic)NSMutableArray *modelsArray;
/** 用来判断是否加载用户信息*/
@property(assign,nonatomic)BOOL loadUserMessage;
@property(weak,nonatomic)id <ZLShowHomeViewDelegate>delegate;

/** 快速构造方法，提供单例对象*/
+ (instancetype)ShowHomeView;
@end
