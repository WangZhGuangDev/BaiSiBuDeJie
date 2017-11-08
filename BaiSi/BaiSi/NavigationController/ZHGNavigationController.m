//
//  ZHGNavigationController.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/6.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGNavigationController.h"

@interface ZHGNavigationController ()

@end

@implementation ZHGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    // Do any additional setup after loading the view.
}

/**
 可以在这个方法中拦截所有push进来的控制器

 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    //如果push进来的不是第一个控制器
    if (self.childViewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationButtonReturn" highlightImage:@"navigationButtonReturnClick" action:@selector(backAction:) target:self];
        //隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //让按钮内部的所有内容左对齐
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    
    //这句super的push放在后面，让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
}

-(void)backAction:(UIButton *)button {
    [self popViewControllerAnimated:YES];
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
