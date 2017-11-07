//
//  UIBarButtonItem+ZHGBarButtonItem.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/7.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "UIBarButtonItem+ZHGBarButtonItem.h"

@implementation UIBarButtonItem (ZHGBarButtonItem)

+(instancetype)itemWithImage:(NSString *)image highlightImage:(NSString *)highlightImage action:(SEL)action target:(id)target{
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highlightImage] forState:(UIControlStateHighlighted)];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    return [[self alloc] initWithCustomView:button];
}

@end
