
//
//  Macros_Color.h
//  baiduMap
//
//  Created by Mike on 16/3/29.
//  Copyright © 2016年 Mike. All rights reserved.
//

#ifndef Macros_Color_h
#define Macros_Color_h

// Method Macro
#define ColorRGB(r, g, b) ([UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f])

#define ColorRGBA(r, g, b, a) ([UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)])

// Constants
// 主色调：绿色
#define MAIN_GREEN_COLOR ([UIColor colorWithHex:@"#2fb99d"])
// 抽屉的二级菜单：暗绿色
#define DARK_GREEN_COLOR ([UIColor colorWithHex:@"#169e82"])
// 入库申请单、报废等的header字体颜色
#define TEXT_BLACK_COLOR ([UIColor colorWithHex:@"#333333"])
// cell 中的小标题的颜色
#define TEXT_GRAY_COLOR ([UIColor colorWithHex:@"#959595"])
// 单据列表cell中未提交、未通过等的颜色
#define TEXT_RED_COLOR ([UIColor colorWithHex:@"#ff3a3a"])
// tableview背景色
//#define TABELVIEW_BACKGROUD_COLOR ([UIColor colorWithHex:@"#f4f4f4"])
#define TABELVIEW_BACKGROUD_COLOR ([UIColor groupTableViewBackgroundColor])

// 资产信息修改中的必填项的红色标题
#define TITLE_RED_COLOR ([UIColor colorWithHex:@"#ff0000"])
// 抽屉菜单的headerview背景色
#define DRAWER_HEADERVIEW_BACK_COLOR (ColorRGB(243, 243, 243))

// 提交按钮的背景颜色
#define BUTTON_BACKGROUNDCOLOR (ColorRGB(248, 248, 248))

// 浅灰色
#define PASSVIEW_BGCOLOR RGBA(234, 234, 234, 1)
// 浅灰色
#define BUTTON_LINE_BGCOLOR ([UIColor colorWithHex:@"#dcdcdc"])
// 查询模块的BarTintColor
#define QUERY_GRAY_BAR_TINT_COLOR ColorRGB(226, 226, 226)


// 详情信息的黑色字体
#define DETAIL_BLACK_COLOR ([UIColor blackColor])

#endif /* Macros_Color_h */
