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
        // 上面的label
        UILabel *topLabel;
        if (i == 0) {
            
            topLabel = [[UILabel alloc]initWithFrame:CGRectMake(X + 20, 10, itemWidth, itemHeight / 2)];
        }
        else {
            topLabel = [[UILabel alloc]initWithFrame:CGRectMake(X + 5 , 10, itemWidth, itemHeight / 2)];
        }
        topLabel.textColor = [UIColor lightGrayColor];
        topLabel.font = [UIFont systemFontOfSize:12];
        topLabel.text = titleArray[i];
        [self addSubview:topLabel];
        // 下面的label
        UILabel *bottomLabel;
        if (i == 0) {
            bottomLabel = [[UILabel alloc]initWithFrame:CGRectMake(X + 25, topLabel.bottom + 5, itemWidth, itemHeight - 5 - topLabel.height)];
        }
        else {
            
            bottomLabel = [[UILabel alloc]initWithFrame:CGRectMake(X + 15, topLabel.bottom + 5, itemWidth, itemHeight - 5 - topLabel.height)];
        }
        bottomLabel.text = @"0";
        bottomLabel.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:bottomLabel];
        // 右边的线
        if (i != 3) {
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake((i+1) * itemWidth - 30, 10, 1, 45)];
            lineView.backgroundColor = [UIColor lightGrayColor];
            [self addSubview:lineView];
        }
        if (i == 3) {
            bottomLabel.text = @"我的资料";
        }
    }
}

@end
