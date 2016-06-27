//
//  ZLTableViewCell.h
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/25.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModels.h"

@interface ZLTableViewCell : UITableViewCell
/** 模型*/
@property(strong,nonatomic)ZLStatuses *model;
+(instancetype)cellWithTableView:(UITableView *)tableView;
@end
