//
//  AccountHeaderView.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AccountHeaderView.h"
#import "ButtonItemsView.h"

@interface AccountHeaderView ()

/**
 头像
 */
@property (nonatomic, strong) UIImageView *avaterImgView;
/**
 昵称
 */
@property (nonatomic,strong) UILabel *nickNameLabel;
/**
 vip
 */
@property (nonatomic,strong) UILabel *vipLabel;
/**
 签到Button
 */
@property (nonatomic,strong) UIButton *checkButton;
@property (nonatomic,strong) UIView *lineView;
@property (nonatomic,strong) ButtonItemsView *buttonView;

@end

@implementation AccountHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self _createSubViews];
    }
    return self;
}

- (void)_createSubViews {
   
    self.avaterImgView = [[UIImageView alloc]init];
    self.avaterImgView.layer.cornerRadius = 25;
    self.avaterImgView.layer.masksToBounds = YES;
    self.avaterImgView.image = [UIImage imageNamed:@"Icon"];
    [self addSubview:self.avaterImgView];
    self.nickNameLabel = [[UILabel alloc]init];
    self.nickNameLabel.text = @"玉思盈蝶";
    [self addSubview:self.nickNameLabel];
    self.nickNameLabel.font = [UIFont systemFontOfSize:18];
    self.vipLabel = [[UILabel alloc]init];
    self.vipLabel.text = @" V1.5 ";
    self.vipLabel.layer.cornerRadius = 5;
    self.vipLabel.layer.masksToBounds = YES;
    self.vipLabel.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.vipLabel.layer.borderWidth = 1;
    self.nickNameLabel.font = [UIFont systemFontOfSize:13];
    [self addSubview:self.vipLabel];
    self.checkButton = [[UIButton alloc]init];
    [self.checkButton setTitle:@"已签到" forState:UIControlStateNormal];
    [self.checkButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.checkButton.layer.cornerRadius = 5;
    self.checkButton.layer.masksToBounds = YES;
    self.checkButton.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.checkButton.layer.borderWidth = 1;
    self.checkButton.titleLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:self.checkButton];
    self.lineView = [[UIView alloc]init];
    self.lineView.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.lineView];
    self.buttonView = [[ButtonItemsView alloc]init];
    [self addSubview:self.buttonView];
    [self _layOut];
}

- (void)_layOut {
    
    __weak typeof(self) weakSelf = self;

    [self.avaterImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.mas_left).offset(20);
        make.top.mas_equalTo(weakSelf.mas_top).offset(20);
        make.width.height.equalTo(@50);
    }];
    [self.nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.avaterImgView.mas_right).offset(10);
        make.top.mas_equalTo(weakSelf.avaterImgView);
        make.height.mas_equalTo(25);
    }];
    [self.vipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.nickNameLabel);
        make.top.mas_equalTo(weakSelf.vipLabel).offset(10);
        make.bottom.mas_equalTo(weakSelf.avaterImgView);
    }];
    [self.checkButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(weakSelf).offset(-20);
        make.top.mas_equalTo(weakSelf.avaterImgView.mas_top).offset(10);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(30);
    }];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(weakSelf);
        make.left.mas_equalTo(weakSelf);
        make.top.mas_equalTo(weakSelf.avaterImgView.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.buttonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(weakSelf);
        make.left.mas_equalTo(weakSelf);
        make.top.mas_equalTo(weakSelf.lineView);
    }];
}

@end
