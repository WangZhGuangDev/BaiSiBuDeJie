//
//  UIView+ZHGUIView.m
//  BaiSi
//
//  Created by 王忠光 on 2017/11/7.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "UIView+ZHGUIView.h"

@implementation UIView (ZHGUIView)

-(void)setX:(CGFloat)x {
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

-(CGFloat)x {
    return self.frame.origin.x;
}

-(void)setY:(CGFloat)y {
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

-(CGFloat)y {
    return self.frame.origin.y;
}

-(void)setWidth:(CGFloat)width {
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

-(CGFloat)width {
    return self.frame.size.width;
}

-(void)setHeight:(CGFloat)height {
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

-(CGFloat)height {
    return self.frame.size.height;
}

-(void)setSize:(CGSize)size {
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

-(CGSize)size {
    return self.frame.size;
}

@end
