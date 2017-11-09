//
//  ZHGColorHeader.h
//  BaiSi
//
//  Created by 王忠光 on 2017/11/8.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#ifndef ZHGColorHeader_h
#define ZHGColorHeader_h

/**
 [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
 颜色：
 24bit颜色：RGB
 #ff0000
 #ffff00
 #ffffff
 #000000
 
 32bit颜色：RGBA
 最前面的ff表示透明度（ARGB）
 #ff00ffaa
 
 灰色：RGB的值都一样
*/

#define ZHGRGBColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define ZHGBackGroundColor [UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1.0]

#define ZHGRedColor [UIColor redColor]
#define ZHGBlackColor [UIColor blackColor]
#define ZHGWhiteColor [UIColor whiteColor]
#define ZHGGrayColor [UIColor grayColor]
#define ZHGDarkGrayColor [UIColor darkGrayColor]
#define ZHGLightGrayColor [UIColor lightGrayColor]

#define ZHGColorWithFFFFFF [UIColor colorWithHexString:@"FFFFFF"]
#define ZHGColorWith27C2B6 [UIColor colorWithHexString:@"#27C2B6"]

#endif /* ZHGColorHeader_h */
