//
//  Macro_String.h
//  zichan
//
//  Created by Mike on 16/5/16.
//  Copyright © 2016年 Mike. All rights reserved.
//

#ifndef Macro_String_h
#define Macro_String_h

// user default access
#define USERDEFAULT_OBJ4KEY(key) [[NSUserDefaults standardUserDefaults] objectForKey:key]
#define USERDEFAULT_SETOBJ4KEY(obj, key) [[NSUserDefaults standardUserDefaults]setObject:obj forKey:key]

#define USERDEFAULT_BOOL4KEY(key) [[NSUserDefaults standardUserDefaults] boolForKey:key]
#define USERDEFAULT_SETBOOL4KEY(bool, key) [[NSUserDefaults standardUserDefaults] setBool:bool forKey:key]

#define kServerURL (@"kServerURL")
#define isNotFirstOpenApp (@"isFirstOpenApp")

// net request status
#define STR_REQUEST_LOADING (@"加载中...")
#define STR_REQUEST_SUCCESS (@"请求成功")
#define STR_REQUEST_ERROR (@"请求失败")
#define STR_REQUEST_NODATA (@"暂无数据")
#define STR_REQUEST_NOACCESS (@"无权限")
#define STR_REQUEST_OVERTIME (@"请求超时")
#define STR_DOWNLOAD_SUCCESS (@"下载成功")
#define STR_DOWNLOAD_FAILED (@"下载失败")
#define STR_PASSWORD_ERROR (@"密码错误")
#define STR_REQUEST_OPERATEFAILED (@"操作失败")
#define STR_SAVE_SUCCESS (@"保存成功")
#define STR_SAVE_ERROR (@"保存不成功")
#define STR_SEARCH_NORESULT (@"没有此条件的资产哟")
#define KREQUESTDURATION 1.0


// key constants
#define STR_IS_LOGIN (@"login")
#define kUserLoginname (@"loginname")
#define kUserPassword (@"password")

#define STR_ASSET_CLAIM (@"资产领用")
#define STR_ASSET_BORROW (@"资产借用")
#define STR_CONSUMPTION_CLAIM (@"低值领用")
#define STR_CONSUMPTION_BORROW (@"低值借用")
#define STR_MODIFY (@"修改")
#define STR_DELETE (@"删除")
#define STR_SAVE (@"保存")
#define STR_SUBMIT (@"提交")

#define STR_APPLY_PERSON (@"申请人")
#define STR_APPLY_DEPARTMENT (@"申请部门")
#define STR_EXAMINE_DEPARTMENT (@"审批部门")
#define STR_APPLY_DATE (@"申请日期")
#define STR_RETURN_DATE (@"归还日期")
#define STR_TOTAL_PRICE (@"总金额")
#define STR_REMARK (@"备注")

#define STR_DEPARTMENT (@"部门")

#define STR_NAME (@"名称")
#define STR_CATEGORY (@"类别")
#define STR_VENDOR (@"厂商")
#define STR_MODEL (@"型号")
#define STR_SPECIFICATION (@"规格")
#define STR_AMOUNT (@"数量")

#define STR_ASSET_CLAIM_APPLY_FORM (@"资产领用清单")
#define STR_ASSET_BORROW_APPLY_FORM (@"资产借用清单")
#define STR_CONSUMPTION_CLAIM_APPLY_FORM (@"低值领用清单")
#define STR_CONSUMPTION_BORROW_APPLY_FORM (@"低值借用清单")


/**
 *  是否第一次出现,0表示第一次出现，1表示出现了好多次
 */
#define KNOTIFY_FIRSTSHOW @"kfirstShow"

#endif /* Macro_String_h */
