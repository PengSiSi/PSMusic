//
//  MyMusicViewController.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "MyMusicViewController.h"
#import "MyMusicCell.h"
#import "MyMusicMenuCell.h"

@interface MyMusicViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *myMusicTableView;
@property (nonatomic,strong) NSArray *titleArray;
@property (nonatomic,strong) NSArray *imgArray;

@end

@implementation MyMusicViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self initData];
    [self setNavItem];
    [self setUI];
}

- (void)initData {
    
    _titleArray = @[@"下载音乐",@"最近播放",@"我的歌手"];
    _imgArray = @[@"cm2_list_detail_icn_cmt",@"cm2_list_detail_icn_cmt",@"cm2_list_detail_icn_cmt"];
}

#pragma mark - 导航栏按钮

- (void)setNavItem {
    
    UIBarButtonItem *leftItem = [UIBarButtonItem barButtonItemWithTitle:@"更多" tintColor:[UIColor whiteColor] target:self action:@selector(moreItemDidiClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"cm2_topbar_icn_playing"] highLightedImage:nil target:self action:@selector(playItemDidClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = leftItem;
    self.navigationItem.rightBarButtonItem = rightItem;
}

#pragma mark - 设置界面

- (void)setUI {
   
    [self.view addSubview:self.myMusicTableView];
}

#pragma mark - 网络请求

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 3;
    }
    else {
        
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        
        MyMusicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myMusicCell" forIndexPath:indexPath];
        cell.titleLabel.text = self.titleArray[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:self.imgArray[indexPath.row]];
        cell.accessoryImgView.image = [UIImage imageNamed:@"choice_icon"];
        if (indexPath.row == 2) {
            cell.contentLabel.text = @"猜你喜欢";
        }
        return cell;
    }
    
    else if (indexPath.section == 1) {
        MyMusicMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myMusicMenuCell" forIndexPath:indexPath];
        return cell;
    }
    return nil;
}

#pragma mark - UITableViewDelegate

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
 
    if (section == 1) {
        
        UILabel *footerLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, K_SCREEN_WIDTH, 44)];
        footerLabel.text = @"收藏你喜欢的音乐到歌单";
        footerLabel.textAlignment = NSTextAlignmentCenter;
        footerLabel.font = [UIFont systemFontOfSize:13];
        footerLabel.textColor = [UIColor grayColor];
        return footerLabel;
    }
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    if (section == 1) {
        
        UILabel *headerLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, K_SCREEN_WIDTH, 20)];
        headerLabel.text = @"    我创建的歌单(1)";
        headerLabel.textColor = [UIColor whiteColor];
        headerLabel.font = [UIFont systemFontOfSize:13];
        headerLabel.backgroundColor = [UIColor lightGrayColor];
        return headerLabel;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    if (section == 0) {
        return 0.0001f;
    }
    else {
        return 44;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    if (section == 0) {
        return 0.0001f;
    }
    else {
        return 20;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        return 44;
    }
    else {
        return 65;
    }
}

#pragma mark - Private Method

- (void)moreItemDidiClick: (UIBarButtonItem *)item {
    
}

- (void)playItemDidClick: (UIBarButtonItem *)item {
    
}

#pragma mark - 懒加载

- (UITableView *)myMusicTableView {
    
    if (!_myMusicTableView) {
        _myMusicTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _myMusicTableView.delegate = self;
        _myMusicTableView.dataSource = self;
        // 注册cell
        [_myMusicTableView registerClass:[MyMusicCell class] forCellReuseIdentifier:@"myMusicCell"];
         [_myMusicTableView registerClass:[MyMusicMenuCell class] forCellReuseIdentifier:@"myMusicMenuCell"];
    }
    return _myMusicTableView;
}

@end
