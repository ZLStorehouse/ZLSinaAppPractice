//
//  AppDelegate.m
//  ZLSinaAppPractice
//
//  Created by mac on 16/6/23.
//  Copyright © 2016年 zhiYou. All rights reserved.
//

#import "AppDelegate.h"
#import "ZLHomePageViewController.h"
#import "ZLMessageViewController.h"
#import "ZLMoreViewController.h"
#import "ZLDiscoveryViewController.h"
#import "ZLMeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor=[UIColor whiteColor];
    [self addTabBarController];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)addTabBarController{
    UITabBarController *tabBarController=[[UITabBarController alloc]init];
    
    //设置所有Item的字体颜色
    UITabBarItem*allItem=[UITabBarItem appearance];
    NSMutableDictionary*titleTextDict=[NSMutableDictionary dictionary];
    titleTextDict[NSForegroundColorAttributeName]=[UIColor colorWithRed:248/255.f green:110/255.f blue:0/255.f alpha:1];
    [allItem setTitleTextAttributes:titleTextDict forState:UIControlStateSelected];
    
    ZLHomePageViewController *home=[[ZLHomePageViewController alloc]init];
    UINavigationController *homeNavigation=[[UINavigationController alloc]initWithRootViewController:home];
    UIImage *homeImage=[[UIImage imageNamed:@"tabbar_home"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *homeSelectedImage=[[UIImage imageNamed:@"tabbar_home_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    home.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"首页" image:homeImage selectedImage:homeSelectedImage];
    
    ZLMessageViewController *message=[[ZLMessageViewController alloc]init];
    UINavigationController *messageNavigation=[[UINavigationController alloc]initWithRootViewController:message];
    UIImage *messageImage=[[UIImage imageNamed:@"tabbar_message_center"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *messageSelectedImage=[[UIImage imageNamed:@"tabbar_message_center_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    message.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"信息" image:messageImage selectedImage:messageSelectedImage];
    
    UIViewController *placeholder=[[UIViewController alloc]init];
    UINavigationController *placeholderNavigation=[[UINavigationController alloc]initWithRootViewController:placeholder];
    placeholder.tabBarItem=[[UITabBarItem alloc]init];
    
    UIButton *moreButton=[[UIButton alloc] init];
    UIImage *moreImage=[UIImage imageNamed:@"tabbar_compose_button"];
    [moreButton setBackgroundImage:moreImage forState:UIControlStateNormal];
    [moreButton setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [moreButton addTarget:self action:@selector(gengDuoAnNiuDianJiShiJian) forControlEvents:UIControlEventTouchUpInside];
    moreButton.tag=10;
    moreButton.bounds=CGRectMake(0, 0, moreImage.size.width, moreImage.size.height);
    moreButton.center=tabBarController.tabBar.center;
    [tabBarController.view addSubview:moreButton];
    
    ZLDiscoveryViewController *discovery=[[ZLDiscoveryViewController alloc]init];
    UINavigationController *discoveryNavigation=[[UINavigationController alloc]initWithRootViewController:discovery];
    UIImage *discoveryImage=[[UIImage imageNamed:@"tabbar_discover"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *discoverySelectedImage=[[UIImage imageNamed:@"tabbar_discover_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    discovery.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"发现" image:discoveryImage selectedImage:discoverySelectedImage];
    
    ZLMeViewController *me=[[ZLMeViewController alloc]init];
    UINavigationController *meNavigation=[[UINavigationController alloc]initWithRootViewController:me];
    UIImage *meImage=[[UIImage imageNamed:@"tabbar_profile"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *meSelectedImage=[[UIImage imageNamed:@"tabbar_profile_highlighted"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    me.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"我" image:meImage selectedImage:meSelectedImage];
    
    tabBarController.viewControllers=@[homeNavigation,messageNavigation,placeholderNavigation,discoveryNavigation,meNavigation];
    self.window.rootViewController=tabBarController;
}
-(void)gengDuoAnNiuDianJiShiJian{
    ZLMoreViewController *more=[[ZLMoreViewController alloc]init];
    UINavigationController *moreNavigation=[[UINavigationController alloc]initWithRootViewController:more];
    [self.window.rootViewController presentViewController:moreNavigation animated:YES completion:nil];
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
