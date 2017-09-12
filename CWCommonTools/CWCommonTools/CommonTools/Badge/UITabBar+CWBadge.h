//
//  UITabBar+CWBadge.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/12.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (CWBadge)

// 显示小红点
- (void)showBadgeWithIndex:(NSInteger)index;

// 隐藏小红点
- (void)hideBadgeIndex:(NSInteger)index;


@end
