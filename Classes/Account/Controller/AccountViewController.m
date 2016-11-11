//
//  AccountViewController.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AccountViewController.h"
#import "UIBarButtonItem+Create.h"
#import "AccountHeaderView.h"
#import "AccountCell.h"

static NSString * const identify = @"AccountCell";

@interface AccountViewController ()<UITableViewDelegate, UITableViewDataSource>

{
    NSArray *imageIconArray;
    NSArray *itemNameArray;
}
@property (nonatomic,strong) UITableView *accountTableView;
@property (nonatomic,strong) NSMutableArray *dataArray;
@property (nonatomic,strong) AccountHeaderView *headerView;

@end

@implementation AccountViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.translucent = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self initData];
    [self setNavItem];
    [self createTableView];
    [self createHeaderView];
}

#pragma mark - 初始化数据

- (void)initData {
    
     imageIconArray= @[@[@"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt", @"cm2_play_icn_cmt",@"cm2_play_icn_cmt"],@[@"cm2_play_icn_cmt", @"cm2_play_icn_cmt"]];
     itemNameArray = @[@[@"我的消息"],@[@"会员中心", @"积分商城", @"在线听歌免流量"],@[@"设置", @"扫一扫", @"主题换肤", @"夜间模式", @"定时关闭", @"音乐闹钟",@"驾驶模式"],@[@"分享网易云音乐", @"关于"]];
}

#pragma mark - 导航栏按钮

- (void)setNavItem{
    
     self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"cm2_topbar_icn_playing"] highLightedImage:nil target:self action:@selector(rightItemClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)rightItemClick: (UIBarButtonItem *)barItem {
    NSLog(@"播放音乐界面");
}

#pragma mark - 设置界面

- (void)createTableView {
    
    [self.view addSubview:self.accountTableView];
}

- (void)createHeaderView {
   
    self.headerView = [[AccountHeaderView alloc]initWithFrame:CGRectMake(0, 0, K_SCREEN_WIDTH, 140)];
    self.headerView.backgroundColor = [UIColor whiteColor];
    self.accountTableView.tableHeaderView = self.headerView;
}

#pragma mark - 网络请求

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return imageIconArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return ((NSArray *)(imageIconArray[section])).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AccountCell *cell = [tableView dequeueReusableCellWithIdentifier:identify forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.iconImgView.image = [UIImage imageNamed:@"cm2_play_icn_cmt"];
    cell.titleLabel.text = itemNameArray[indexPath.section][indexPath.row];
    cell.accessoryImgView.image = [UIImage imageNamed:@"choice_icon"];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 44;
}

#pragma mark - 懒加载

- (UITableView *)accountTableView {
    
    if (!_accountTableView) {
        _accountTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, K_SCREEN_WIDTH, K_SCREEN_HEIGHT - 64) style:UITableViewStyleGrouped];
        _accountTableView.delegate = self;
        _accountTableView.dataSource = self;
        // 注册cell
        [_accountTableView registerClass:[AccountCell class] forCellReuseIdentifier:identify];
    }
    return _accountTableView;
}

@end
