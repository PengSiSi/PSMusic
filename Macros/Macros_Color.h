
//
//  Macros_Color.h
//  baiduMap
//
//  Created by PengSi on 16/3/29.
//  Copyright © 2016年 PengSi. All rights reserved.
//

#ifndef Macros_Color_h
#define Macros_Color_h

// Method Macro
#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/)\
[UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]

#define ColorRGB(r, g, b) ([UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f])

#define ColorRGBA(r, g, b, a) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)])

// Constants

// 红色<导航栏>
#define NAV_RED_COLOR RGBA(205, 85, 85, 1)

// 深灰色<标签栏>
#define TABBAR_GRAY_COLOR RGBA(105, 105, 105, 1)

// 浅灰色<视图背景>
#define BGVIEW_COLOR RGBA(245, 245, 245, 1)


#endif /* Macros_Color_h */
