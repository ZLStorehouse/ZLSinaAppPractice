//
//  ZLTableViewCell.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/25.
//  Copyright © 2016年 zhiYou. All rights reserved.
//
#define SWIITCH 1

#define WS(ws) __weak typeof(self)ws=self
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
#import "ZLTableViewCell.h"
#import "UIImageView+WebCache.h"
#import <UIColor+Hex.h>
#import "NSString+Image.h"

@interface ZLTableViewCell ()
/** 头像*/
@property(weak,nonatomic)UIImageView *iconImageView;
/** 发表人*/
@property(weak,nonatomic)UILabel *nameLabel;
/** 发表时间*/
@property(weak,nonatomic)UILabel *dateLabel;
/** 发表的内容*/
@property(weak,nonatomic)UILabel *contentLabel;
/** 转发*/
@property(weak,nonatomic)UIButton *transmitButton;
/** 评论*/
@property(weak,nonatomic)UIButton *commentButton;
/** 赞*/
@property(weak,nonatomic)UIButton *praiseButton;
/** 按钮上分隔线*/
@property(weak,nonatomic)UIView *topCuttingLineView;
/** 按钮下分隔线*/
@property(weak,nonatomic)UIView *bottomCuttingLineView;
/** 单元格之间的分隔背景*/
@property(weak,nonatomic)UIView *cellCuttingView;
@end
@implementation ZLTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle=UITableViewCellSelectionStyleNone;
        self.contentView.backgroundColor=(SWIITCH==1)?[UIColor lightGrayColor]:[UIColor whiteColor];//此处为《标记》
        
        UIImageView *iconImageView=[[UIImageView alloc]init];
        [self.contentView addSubview:iconImageView];
        self.iconImageView=iconImageView;
        
        UILabel *nameLabel=[[UILabel alloc]init];
        nameLabel.font=[UIFont systemFontOfSize:14.f];
        [self.contentView addSubview:nameLabel];
        self.nameLabel=nameLabel;
        
        UILabel *dateLabel=[[UILabel alloc]init];
        dateLabel.font=[UIFont systemFontOfSize:12.f];
        dateLabel.textColor=[UIColor colorWithCSS:@"#9d9d9d"];
        [self.contentView addSubview:dateLabel];
        self.dateLabel=dateLabel;
        
        UILabel *contentLabel=[[UILabel alloc]init];
        contentLabel.numberOfLines=0;
        contentLabel.font=[UIFont systemFontOfSize:15.f];
        [self.contentView addSubview:contentLabel];
        self.contentLabel=contentLabel;
        
        UIButton *transmitButton=[[UIButton alloc]init];
        [transmitButton setImage:[NSString imageWithImageName:@"timeline_icon_retweet"] forState:UIControlStateNormal];
        [transmitButton setTitle:@"转发" forState:UIControlStateNormal];
        [transmitButton setTitleColor:[UIColor colorWithCSS:@"#929292"] forState:UIControlStateNormal];
        [transmitButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:transmitButton];
        self.transmitButton=transmitButton;
        transmitButton.backgroundColor=(SWIITCH==1)?[UIColor redColor]:[UIColor whiteColor];//此处为《标记》

        UIButton *commentButton=[[UIButton alloc]init];
        [commentButton setImage:[NSString imageWithImageName:@"timeline_icon_comment"] forState:UIControlStateNormal];
        [commentButton setTitle:@"评论" forState:UIControlStateNormal];
        [commentButton setTitleColor:[UIColor colorWithCSS:@"#929292"] forState:UIControlStateNormal];
        [commentButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:commentButton];
        self.commentButton=commentButton;
        commentButton.backgroundColor=(SWIITCH==1)?[UIColor blueColor]:[UIColor whiteColor];//此处为《标记》

        UIButton *praiseButton=[[UIButton alloc]init];
        [praiseButton setImage:[NSString imageWithImageName:@"timeline_icon_retweet"] forState:UIControlStateNormal];
        [praiseButton setTitle:@"赞" forState:UIControlStateNormal];
        [praiseButton setTitleColor:[UIColor colorWithCSS:@"#929292"] forState:UIControlStateNormal];
        [praiseButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:praiseButton];
        self.praiseButton=praiseButton;
        praiseButton.backgroundColor=(SWIITCH==1)?[UIColor orangeColor]:[UIColor whiteColor];//此处为《标记》
 
        UIView *topCuttingLineView=[[UIView alloc]init];
        topCuttingLineView.backgroundColor=[UIColor colorWithCSS:@"#f2f2f2"];
        [self.contentView addSubview:topCuttingLineView];
        self.topCuttingLineView=topCuttingLineView;
        
        UIView *bottomCuttingLineView=[[UIView alloc]init];
        bottomCuttingLineView.backgroundColor=[UIColor colorWithCSS:@"#f2f2f2"];
        [self.contentView addSubview:bottomCuttingLineView];
        self.bottomCuttingLineView=bottomCuttingLineView;
        
        UIView *cellCuttingView=[[UIView alloc]init];
        cellCuttingView.backgroundColor=[UIColor colorWithCSS:@"#f2f2f2"];
        [self.contentView addSubview:cellCuttingView];
        self.cellCuttingView=cellCuttingView;
        
        
        WS(weakSelf);
        [self.iconImageView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf).offset(15);
            make.left.equalTo(weakSelf).offset(12);
            make.size.equalTo(39);
        }];
        [self.contentView layoutIfNeeded];
        iconImageView.layer.cornerRadius=self.iconImageView.frame.size.width/2;
        iconImageView.layer.masksToBounds=YES;
        [nameLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf).offset(21);
            make.left.equalTo(weakSelf.iconImageView.right).offset(13);
        }];
        [dateLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.nameLabel.bottom).offset(5);
            make.left.equalTo(weakSelf.iconImageView.right).offset(13);
        }];
        [contentLabel makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.iconImageView.bottom).offset(10);
            make.left.equalTo(weakSelf).offset(10);
//            make.width.equalTo([UIScreen mainScreen].bounds.size.width-20);
        }];
        contentLabel.preferredMaxLayoutWidth=[UIScreen mainScreen].bounds.size.width-20;
        [transmitButton makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.contentLabel.bottom).offset(10);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width/3);
            make.height.equalTo(34);
            make.left.equalTo(weakSelf.contentView);
        }];
        [commentButton makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.contentLabel.bottom).offset(10);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width/3);
            make.height.equalTo(34);
            make.left.equalTo(transmitButton.right);
        }];
        [praiseButton makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.contentLabel.bottom).offset(10);
            make.width.equalTo([UIScreen mainScreen].bounds.size.width/3);
            make.height.equalTo(34);
            make.left.equalTo(commentButton.right);
        }];

        [topCuttingLineView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.transmitButton);
            make.left.equalTo(weakSelf);
            make.right.equalTo(weakSelf);
            make.height.equalTo(0.5);
        }];
        [bottomCuttingLineView makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(weakSelf.transmitButton);
            make.left.equalTo(weakSelf);
            make.right.equalTo(weakSelf);
            make.height.equalTo(0.5);
        }];
        [cellCuttingView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(transmitButton.bottom);
            make.left.equalTo(weakSelf);
            make.right.equalTo(weakSelf);
            make.height.equalTo(9);
        }];
        [self layoutIfNeeded];
        
    }
    return self;
}
-(void)buttonClick{
    NSLog(@"转发");
}
+(instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *identifier=@"cell";
    ZLTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell=[[ZLTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}
-(void)setModel:(ZLStatuses *)model{
    _model=model;
    self.nameLabel.text=model.user.name;
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.user.profileImageUrl] placeholderImage:[UIImage imageNamed:@"profile_Head_gray"]];
    NSString *date=[model.user.createdAt componentsSeparatedByString:@" "][3];
    if (![model.source isEqualToString:@""]) {
        NSString *sourceString=[model.source componentsSeparatedByString:@">"][1];
        NSString *source=[[sourceString componentsSeparatedByString:@"<"] firstObject];
        self.dateLabel.text=[NSString stringWithFormat:@"%@  来自%@",date,source];
    }else{
        self.dateLabel.text=date;
    }
    
    
    
    self.contentLabel.preferredMaxLayoutWidth=[UIScreen mainScreen].bounds.size.width-20;//此处为《标记》
    self.contentLabel.text=model.text;
    
    
    self.contentLabel.backgroundColor=(SWIITCH==1)?[UIColor cyanColor]:[UIColor whiteColor];//此处为《标记》

    
    [self layoutIfNeeded];
    CGFloat CH=CGRectGetMaxY(self.cellCuttingView.frame);
    NSNumber *NB=[NSNumber numberWithFloat:CH];
    _model.cellHeight=NB;
}
@end



//问题2：界面卡顿严重，单元格在滑动的时候出现了明显的蹦跳，如何优化？
