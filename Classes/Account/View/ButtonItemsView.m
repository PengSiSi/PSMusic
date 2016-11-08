//
//  ButtonItemsView.m
//  PSMusic
//
//  Created by 思 彭 on 16/11/8.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "ButtonItemsView.h"

@interface ButtonItemsView ()

@end

@implementation ButtonItemsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _createSubViews];
    }
    return self;
}

- (void)_createSubViews {
    
    CGFloat itemWidth = K_SCREEN_WIDTH / 4;
    CGFloat itemHeight = 50;
    NSArray *titleArray = @[@"动态",@"关注",@"粉丝",@""];
    for (NSInteger i = 0; i < titleArray.count; i++) {
        CGFloat X = i * itemWidth;
        CGFloat Y = self.centerY;
        // 上面的label
        UILabel *topLabel = [[UILabel alloc]initWithFrame:CGRectMake(X, 10, itemWidth, itemHeight / 2)];
        topLabel.textColor = [UIColor lightGrayColor];
        topLabel.font = [UIFont systemFontOfSize:12];
        topLabel.text = titleArray[i];
        [self addSubview:topLabel];
        // 下面的label
        UILabel *bottomLabel = [[UILabel alloc]initWithFrame:CGRectMake(X, topLabel.bottom + 5, itemWidth, itemHeight - 5 - topLabel.height)];
        bottomLabel.text = @"0";
        bottomLabel.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:bottomLabel];
        // 右边的线
        if (i != 3) {
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake((i+1) * itemWidth, 5, 1, self.height - 10)];
            [self addSubview:lineView];
        }
        if (i == 3) {
            bottomLabel.text = @"我的资料";
        }
    }
}

@end
