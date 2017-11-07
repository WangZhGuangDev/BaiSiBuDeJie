//
//  UIView+ZHGUIView.h
//  BaiSi
//
//  Created by 王忠光 on 2017/11/7.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZHGUIView)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
//@property (nonatomic, assign) CGFloat x;
//@property (nonatomic, assign) CGFloat x;
//@property (nonatomic, assign) CGFloat x;
//@property (nonatomic, assign) CGFloat x;

/* 在分类中声明属性，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量 */

@end
