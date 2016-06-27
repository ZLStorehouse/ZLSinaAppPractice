//
//  ZLHomePageViewController.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/23.
//  Copyright © 2016年 zhiYou. All rights reserved.
//
#define WS(ws) __weak typeof(self)ws=self
#define MAS_SHORTHAND
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>
#import "ZLHomePageViewController.h"
#import "ZLLogInViewController.h"
#import "ZLSinaTokenManager.h"
#import "ZLShowHomeView.h"
#import "ZLRequestUserMessageModel.h"
#import <MJRefresh.h>
#import "DataModels.h"


@interface ZLHomePageViewController ()<ZLRequestUserMessageModelDelegate,ZLShowHomeViewDelegate>
@property(weak,nonatomic)UIBarButtonItem *logInButton;
@property(strong,nonatomic)ZLRequestUserMessageModel *model;
@property(weak,nonatomic)ZLShowHomeView *homeView;
@property(unsafe_unretained,nonatomic)BOOL isAllowAdd;
@property(unsafe_unretained,nonatomic)int page;
@property(weak,nonatomic)UITableView *tableView;
@end

@implementation ZLHomePageViewController

-(ZLRequestUserMessageModel *)model{
    if (!_model) {
        _model=[ZLRequestUserMessageModel requestUserMessageModel];
    }
    return _model;
}
-(ZLShowHomeView *)homeView{
    if (!_homeView) {
        ZLShowHomeView *homeView=[ZLShowHomeView ShowHomeView];
        homeView.delegate=self;
        [self.view addSubview:homeView];
        WS(weakSelf);
        [homeView makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(weakSelf.view).offset(64);
            make.bottom.equalTo(weakSelf.view).offset(-49);
            make.left.equalTo(weakSelf.view);
            make.right.equalTo(weakSelf.view);
        }];

        _homeView=homeView;
    }
    return _homeView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.page=1;
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.navigationItem.title=@"首页";
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBarAndNavigationBar];
    [self controlRightBarButton];
}


#pragma mark- Pargma mark- private
//显示标签栏和导航栏
-(void)showTabBarAndNavigationBar{
    self.tabBarController.tabBar.hidden=NO;
    UIButton *button=(UIButton *)[self.tabBarController.view viewWithTag:10];
    button.hidden=NO;
    self.navigationController.navigationBar.hidden=NO;
}
-(void)hiddenTabBarAndNavigationBar{
    self.tabBarController.tabBar.hidden=YES;
    UIButton *button=(UIButton *)[self.tabBarController.view viewWithTag:10];
    button.hidden=YES;
    self.navigationController.navigationBar.hidden=YES;
}

//控制右边按钮的隐藏与添加
-(void)controlRightBarButton{
    ZLSinaTokenManager *manager=[ZLSinaTokenManager standardSinaTokenManager];
    if (manager.tokenString) {
        if ([ZLSinaTokenManager accessTokenIsAvailable]) {
            //token可用，加载数据
            self.navigationItem.rightBarButtonItem=nil;
            ;
            self.homeView.modelsArray=[[NSMutableArray alloc]init];
            self.homeView.loadUserMessage=YES;
            self.model.delegate=self;
            [self.model RequestUserDataModelWithToken:manager.tokenString Page:self.page];//此处为《标记》
        }else{
            //加载默认页面，示意用户登录
            [self addRightBarButton];
            self.homeView.loadUserMessage=NO;
        }
    }else{
        //加载默认页面，示意用户登录
        [self addRightBarButton];
        self.homeView.loadUserMessage=NO;
    }
}
-(void)addRightBarButton{
    UIBarButtonItem *logInButton=[[UIBarButtonItem alloc]initWithTitle:@"登录" style:UIBarButtonItemStylePlain target:self action:@selector(BarButtonItemClick)];
    self.navigationItem.rightBarButtonItem=logInButton;
    self.logInButton=logInButton;
}

#pragma mark- Pargma mark- buttonClick
-(void)BarButtonItemClick{
    ZLLogInViewController *logIn=[[ZLLogInViewController alloc]init];
    [self.navigationController pushViewController:logIn animated:YES];
    [self hiddenTabBarAndNavigationBar];
}

#pragma mark- Pargma mark- ZLShowHomeViewDelegate
-(void)showHomeView:(ZLShowHomeView *)showHomeView RefreshAndLoadMoreWithTableView:(UITableView *)tableView{
    self.tableView=tableView;
    ZLSinaTokenManager *manager=[ZLSinaTokenManager standardSinaTokenManager];
    WS(weakSelf);
    tableView.mj_header=[MJRefreshNormalHeader headerWithRefreshingBlock:^{
        weakSelf.isAllowAdd=NO;
        [weakSelf.model RequestUserDataModelWithToken:manager.tokenString Page:weakSelf.page];
    }];
    tableView.mj_footer=[MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        weakSelf.isAllowAdd=YES;
        weakSelf.page++;
        [weakSelf.model RequestUserDataModelWithToken:manager.tokenString Page:weakSelf.page];
    }];
}

#pragma mark- Pargma mark- ZLRequestUserMessageModelDelegate
- (void)requestUserMessageModel:(ZLRequestUserMessageModel *)requestUserMessageModel didGetModelArray:(NSArray *)array{
    if (self.isAllowAdd) {
        for (ZLStatuses *statuses in array) {
            [self.homeView.modelsArray addObject:statuses];
        }
    }else{
        [self.homeView.modelsArray removeAllObjects];
        for (ZLStatuses *statuses in array) {
            [self.homeView.modelsArray addObject:statuses];
        }
    }
    [self.tableView.mj_header endRefreshing];
    [self.tableView.mj_footer endRefreshing];
    [self.tableView reloadData];
    NSLog(@"%ld",self.homeView.modelsArray.count);
}
@end
