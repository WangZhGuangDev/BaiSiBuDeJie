//
//  ZHGTabBar.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/7.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGTabBar.h"

@interface ZHGTabBar ()

@property (nonatomic, strong) UIButton *publishButton;

@end

@implementation ZHGTabBar

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:(UIControlStateNormal)];
        
        [button setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:(UIControlStateHighlighted)];
        [self addSubview:button];
        self.publishButton = button;
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.publishButton.bounds = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    self.publishButton.center = CGPointMake(self.width / 2, self.height / 2);
    //设置其他UITabBarButton的frame
    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.width / 5;
    CGFloat buttonH = self.height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            continue;
        }
        button.frame = CGRectMake(buttonW * (index > 1 ? (index + 1) : index), buttonY, buttonW, buttonH);
        index++;
    }
}


@end
