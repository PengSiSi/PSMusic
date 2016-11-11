//
//  AccountCell.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/11.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AccountCell.h"

@interface AccountCell ()

@end

@implementation AccountCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle: style reuseIdentifier:reuseIdentifier]) {
        
        [self _createSubViews];
    }
    return self;
}

- (void)_createSubViews{
    
    self.iconImgView = [[UIImageView alloc]init];
    self.iconImgView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.iconImgView];
    self.titleLabel = [[UILabel alloc]init];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:self.titleLabel];
    self.accessoryImgView = [[UIImageView alloc]init];
    [self.viewForLastBaselineLayout addSubview:self.accessoryImgView];
    [self _layOut];
}

- (void)_layOut {
    
    __weak typeof(self) weakSelf = self;
    
    [self.iconImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(weakSelf.contentView).offset(10);
        make.centerY.mas_equalTo(weakSelf.contentView);
        make.width.height.equalTo(@25);
    }];
    [self .titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.iconImgView.mas_right).offset(20);
        make.centerY.mas_equalTo(weakSelf.iconImgView);
    }];
    [self.accessoryImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(weakSelf.contentView).offset(-10);
        make.centerY.mas_equalTo(weakSelf.iconImgView);
        make.width.height.equalTo(@8);
    }];
}

@end
