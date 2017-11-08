//
//  ZHGEssenceController.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/6.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGEssenceController.h"

@interface ZHGEssenceController ()

@end

@implementation ZHGEssenceController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"精华";
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highlightImage:@"MainTagSubIconClick" action:@selector(leftItemAction:) target:self];

    self.view.backgroundColor = [UIColor redColor];
    
}

-(void)leftItemAction:(UIButton *)sender {
    
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
