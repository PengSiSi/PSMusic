//
//  MyMusicMenuCell.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/13.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "MyMusicMenuCell.h"

@implementation MyMusicMenuCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle: style reuseIdentifier:reuseIdentifier]) {
        
        [self _createSubViews];
    }
    return self;
}

- (void)_createSubViews{
    
    self.iconImgView = [[UIImageView alloc]init];
    self.iconImgView.backgroundColor = [UIColor lightGrayColor];
    self.iconImgView.image = [UIImage imageNamed:@"cm2_default_cover_play"];
    [self.contentView addSubview:self.iconImgView];
    self.titleLabel = [[UILabel alloc]init];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.text = @"我喜欢的音乐";
    [self.contentView addSubview:self.titleLabel];
    self.accessoryImgView = [[UIImageView alloc]init];
    self.accessoryImgView.image = [UIImage imageNamed:@"cm2_play_icn_loved"];
    [self.contentView addSubview:self.accessoryImgView];
    self.subTitleLabel = [[UILabel alloc]init];
    self.subTitleLabel.text = @"142首,已下载116首";
    self.subTitleLabel.font = [UIFont systemFontOfSize:14];
    self.subTitleLabel.textColor = [UIColor grayColor];
    [self.contentView addSubview:self.subTitleLabel];
    [self _layOut];
}

- (void)_layOut {
    
    __weak typeof(self) weakSelf = self;
    
    [self.iconImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.top.mas_equalTo(weakSelf.contentView).offset(10);
        make.bottom.mas_equalTo(weakSelf.contentView).offset(-10);
        make.width.equalTo(@40);
    }];
    [self .titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.iconImgView.mas_right).offset(10);
        make.top.mas_equalTo(weakSelf.contentView.mas_top).offset(10);
    }];
    [self .subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.titleLabel.mas_bottom).offset(10);
        make.left.mas_equalTo(weakSelf.iconImgView.mas_right).offset(10);
    }];
    [self.accessoryImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(weakSelf.contentView).offset(-10);
        make.centerY.mas_equalTo(weakSelf.iconImgView);
        make.width.height.equalTo(@8);
    }];
}


@end
