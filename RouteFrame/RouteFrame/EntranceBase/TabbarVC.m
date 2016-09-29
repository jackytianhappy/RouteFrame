//
//  TabbarVC.m
//  RouteFrame
//
//  Created by Jacky on 16/9/29.
//  Copyright © 2016年 jacky. All rights reserved.
//

#import "TabbarVC.h"
#import "HomeVC.h"
#import "MineVC.h"

@interface TabbarVC ()

@end

@implementation TabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HomeVC *homeVC = [[HomeVC alloc]init];
    UINavigationController *homeNavi = [[UINavigationController alloc]initWithRootViewController:homeVC];
    homeNavi.tabBarItem.image = [[UIImage imageNamed:@"icon_home_normal"]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeNavi.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_home_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeNavi.tabBarItem.title = @"首页";
    
    MineVC *mineVC = [[MineVC alloc]init];
    UINavigationController *mineNavi = [[UINavigationController alloc]initWithRootViewController:mineVC];
    mineNavi.tabBarItem.image = [[UIImage imageNamed:@"icon_me_normal"]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mineNavi.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_me_press"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mineNavi.tabBarItem.title = @"我的";
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:1.0],NSForegroundColorAttributeName, [UIFont systemFontOfSize:10.0],NSFontAttributeName,nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:224.0/255 green:33.0/255 blue:38.0/255 alpha:1.0],NSForegroundColorAttributeName, [UIFont systemFontOfSize:10.0],NSFontAttributeName,nil] forState:UIControlStateSelected];
    
    self.viewControllers = @[homeVC,mineVC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
