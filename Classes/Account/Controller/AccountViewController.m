//
//  AccountViewController.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AccountViewController.h"
#import "UIBarButtonItem+Create.h"

@interface AccountViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic,strong) UITableView *accountTableView;
@property (nonatomic,strong) NSMutableArray *dataArray;

@end

@implementation AccountViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setNavItem];
}

#pragma mark - 初始化数据

- (void)initData {
    
     NSArray *imageIconArray= @[@[@"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt",@"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt"]];
    NSArray *itemNameArray= @[@[@"我的消息"],@[@"会员中心", @"积分商城", @"在线听歌免流量"],@[@"设置", @"扫一扫", @"主题换肤", @"夜间模式", @"定时关闭", @"音乐闹钟",@"驾驶模式"],@[@"分享网易云音乐", @"关于"]];
}

#pragma mark - 导航栏按钮

- (void)setNavItem{
    
     self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"cm2_topbar_icn_playing"] highLightedImage:nil target:self action:@selector(rightItemClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)rightItemClick: (UIBarButtonItem *)barItem {
    NSLog(@"播放音乐界面");
}

#pragma mark - 设置界面

#pragma mark - 网络请求

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate

#pragma mark - 懒加载


@end
