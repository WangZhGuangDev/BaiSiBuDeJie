//
//  ZHGTabBarController.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/6.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGTabBarController.h"
#import "ZHGNavigationController.h"
#import "ZHGEssenceController.h"
#import "ZHGNewViewController.h"
#import "ZHGTrendViewController.h"
#import "ZHGMeViewController.h"
#import "ZHGTabBar.h"

@interface ZHGTabBarController ()

@end

@implementation ZHGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *attrNormal = @{NSFontAttributeName:[UIFont systemFontOfSize:12],NSForegroundColorAttributeName:[UIColor grayColor]};

    NSDictionary *attrSelect = @{NSFontAttributeName:[UIFont systemFontOfSize:12],NSForegroundColorAttributeName:[UIColor darkGrayColor]};
    //通过 appearance 统一设置所有 UITabBarItem 的文字属性
    //后面带有 UI_APPEARANCE_SELECTOR 的方法，都可以通过 appearance 对象来统一设置
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrNormal forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:attrSelect forState:(UIControlStateSelected)];
    
    
    [self setupChildVCWithController:[[ZHGEssenceController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    
    [self setupChildVCWithController:[[ZHGNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];

    [self setupChildVCWithController:[[ZHGTrendViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];

    [self setupChildVCWithController:[[ZHGMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
    
    //利用KVC替换成自定义的tabBar
    [self setValue:[[ZHGTabBar alloc] init] forKey:@"tabBar"];
}

-(void)setupChildVCWithController:(UIViewController *)controller title:(NSString *)title image:(NSString *)image selectImage:(NSString *)selectImage {
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:image];
    controller.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    
    ZHGNavigationController *navagationController = [[ZHGNavigationController alloc] initWithRootViewController:controller];
    [self addChildViewController:navagationController];
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
