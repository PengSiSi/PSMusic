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
    [self addSubview:self.avaterImgView];
    self.nickNameLabel = [[UILabel alloc]init];
    [self addSubview:self.nickNameLabel];
    self.vipLabel = [[UILabel alloc]init];
    [self addSubview:self.vipLabel];
    self.checkButton = [[UIButton alloc]init];
    [self addSubview:self.checkButton];
    self.lineView = [[UIView alloc]init];
    [self addSubview:self.lineView];
    self.buttonView = [[ButtonItemsView alloc]init];
    [self addSubview:self.buttonView];
    [self _layOut];
}

- (void)_layOut {
    
}

@end
