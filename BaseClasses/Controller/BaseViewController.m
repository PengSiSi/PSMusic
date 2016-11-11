//
//  BaseViewController.m
//  baiduMap
//
//  Created by Mike on 16/3/30.
//  Copyright © 2016年 Mike. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = BGVIEW_COLOR;
    self.navigationController.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
}


/**
 尝试设置无效,设置了navigationBar的barStyle即可
 */

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;  //默认的值是黑色的
}

- (BOOL)prefersStatusBarHidden

{
    return NO; // 是否隐藏状态栏
}

@end
