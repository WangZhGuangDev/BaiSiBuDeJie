//
//  UIBarButtonItem+ZHGBarButtonItem.h
//  BaiSi
//
//  Created by 王忠光 on 2017/11/7.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZHGBarButtonItem)

+(instancetype)itemWithImage:(NSString *)image highlightImage:(NSString *)highlightImage action:(SEL)action target:(id)target;

@end
