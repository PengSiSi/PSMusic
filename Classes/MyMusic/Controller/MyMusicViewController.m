//
//  MyMusicViewController.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "MyMusicViewController.h"

@interface MyMusicViewController ()<UITableViewDelegate, UITableViewDelegate>

@property (nonatomic, strong) UITableView *myMusicTableView;

@end

@implementation MyMusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Life Cycle

#pragma mark - 导航栏按钮

#pragma mark - 设置界面

#pragma mark - 网络请求

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate

#pragma mark - 懒加载

- (UITableView *)myMusicTableView {
    
    if (!_myMusicTableView) {
        _myMusicTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _myMusicTableView.delegate = self;
        _myMusicTableView.dataSource = self;
    }
    return _myMusicTableView;
}

@end
