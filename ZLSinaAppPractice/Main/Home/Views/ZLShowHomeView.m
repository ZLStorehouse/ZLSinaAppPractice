//
//  ZLShowHomeView.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/24.
//  Copyright © 2016年 zhiYou. All rights reserved.
//
#define WS(ws) __weak typeof(self)ws=self
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import "ZLShowHomeView.h"
#import <Masonry.h>
#import "ZLTableViewCell.h"


@interface ZLShowHomeView ()<UITableViewDataSource,UITableViewDelegate>
@property(weak,nonatomic)UITableView *tableView;
@property(weak,nonatomic)UIView *defaultView;
@end
@implementation ZLShowHomeView

+ (instancetype)ShowHomeView{
    return [[self alloc]init];
}

#pragma mark- Pargma mark- Set/Get的重写
-(void)setLoadUserMessage:(BOOL)loadUserMessage{
    _loadUserMessage=loadUserMessage;
    //根据是否登录加载不同的页面
    if (_loadUserMessage) {
        [self addTableView];
    }else{
        [self addDefaultView];
    }
}
-(void)setModelsArray:(NSMutableArray *)modelsArray{
    _modelsArray=modelsArray;
    [self.tableView reloadData];
}
-(UITableView *)tableView{
    if (!_tableView) {
        UITableView *tableView=[[UITableView alloc]init];
        tableView.delegate=self;
        tableView.dataSource=self;
        tableView.opaque=YES;
        [tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
        tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self addSubview:tableView];
        if ([_delegate respondsToSelector:@selector(showHomeView:RefreshAndLoadMoreWithTableView:)]) {
            [_delegate showHomeView:self RefreshAndLoadMoreWithTableView:tableView];
        }
        _tableView=tableView;
    }
    return _tableView;
}
-(UIView *)defaultView{
    if (!_defaultView) {
        UIView *defaultView=[[UIView alloc]init];
        defaultView.backgroundColor=[UIColor blueColor];//此处为《标记》
        [self addSubview:defaultView];
        _defaultView=defaultView;
    }
    return _defaultView;
}

#pragma mark- Pargma mark- 添加Self的子控件
-(void)addTableView{
    WS(weakSelf);
    [self.tableView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf);
    }];
}
-(void)addDefaultView{
    WS(weakSelf);
    [self.defaultView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf);
    }];
}

#pragma mark- Pargma mark- UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.modelsArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZLTableViewCell *cell=[ZLTableViewCell cellWithTableView:tableView];
    ZLStatuses *model=self.modelsArray[indexPath.row];
    cell.model=model;
    return cell;
}

#pragma mark- Pargma mark- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZLStatuses *model=self.modelsArray[indexPath.row];
    return [model.cellHeight floatValue];
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}
@end
