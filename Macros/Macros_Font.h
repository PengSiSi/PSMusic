//
//  Macros_Font.h
//  baiduMap
//
//  Created by Mike on 16/3/29.
//  Copyright © 2016年 Mike. All rights reserved.
//

#ifndef Macros_Font_h
#define Macros_Font_h

//#define MAIN_BUTTON_TITLELABEL_FONT [UIFont fontWithName:@"STHeitiTC-Medium" size:14.f]
#define NAVIGATIONBAR_TEXT_FONT ([UIFont systemFontOfSize:17.f])
#define SECTION_HEADER_TEXT_FONT ([UIFont systemFontOfSize:15.f])
#define CELL_TEXT_FONT ([UIFont systemFontOfSize:12.f])
#define SMALL_TEXT_FONT ([UIFont systemFontOfSize:9.f])
/*
 
 */


///单据列表单据编号字体
#define TICKETS_LIST_NUMBER_FONT ([UIFont systemFontOfSize:15])

//单据列表申请人,申请时间字体
#define TICKETS_LIST_APPLICATIONER_FONT ([UIFont systemFontOfSize:12])

//选择资产列表编号字体
#define SELECT_LIST_NUMBER_FONT ([UIFont systemFontOfSize:15])

//选择资产列表名称,类型字体
#define SELECT_LIST_TYPE_NAME_FONT ([UIFont systemFontOfSize:12])

//待处理选择资产详情基本信息字体
#define SELECT_LIST_BASEINFO_FONT ([UIFont systemFontOfSize:15])

//详情信息字体
#define DETAIL_LIST_BASEINFO_FONT [UIScreen mainScreen].bounds.size.width > 320 ? [UIFont systemFontOfSize:15] : [UIFont systemFontOfSize:12]
//计算label高度的字体
#define labelHeightFont [UIScreen mainScreen].bounds.size.width > 320 ? [UIFont systemFontOfSize:17] : [UIFont systemFontOfSize:14]

//资产入库字体
#define ASSET_STORAGE_FONT ([UIFont systemFontOfSize:12])

// 详情资产编号
#define DETAIL_ASSET_NUMBER_FONT ([UIFont systemFontOfSize:17])

// 流程处理的字体
#define PROGRESS_DETAIL_FONT ([UIFont systemFontOfSize:12])


#endif /* Macros_Font_h */
