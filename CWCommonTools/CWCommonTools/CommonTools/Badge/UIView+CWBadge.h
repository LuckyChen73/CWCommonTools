//
//  UIView+CWBadge.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/11.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CWBadge)
// 角标
@property (nonatomic, strong) UILabel *badge;

// 显示小红点
- (void)showBadge;

// 显示小红点与个数
- (void)showBadgeWithCount:(NSInteger)count;

// 隐藏小红点
- (void)hiddenBadge;

@end
