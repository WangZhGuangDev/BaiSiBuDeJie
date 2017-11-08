//
//  ZHGMeViewController.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/6.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGMeViewController.h"

@interface ZHGMeViewController ()

@end

@implementation ZHGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我";
    self.view.backgroundColor = ZHGBackGroundColor;
    UIBarButtonItem *setting = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highlightImage:@"mine-setting-icon-click" action:@selector(rightItemAction:) target:self];
    UIBarButtonItem *moon = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highlightImage:@"mine-moon-icon-click" action:@selector(rightItemAction:) target:self];
    
    self.navigationItem.rightBarButtonItems = @[setting,moon];
}


-(void)rightItemAction:(UIButton *)sender {
    ZHGLog(@"%s",__func__);
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
