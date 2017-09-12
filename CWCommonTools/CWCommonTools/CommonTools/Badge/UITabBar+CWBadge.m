//
//  UITabBar+CWBadge.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/12.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UITabBar+CWBadge.h"

static NSInteger const badgeTag = 200; //红点起始tag值
static NSInteger const pointWidth = 6; //小红点的宽高
static NSInteger const rightRange = 9; //距离tabBar右边的距离

@implementation UITabBar (CWBadge)

// 显示小红点
- (void)showBadgeWithIndex:(NSInteger)index
{
    [self hideBadgeIndex:index];
    UIView *badgeView = [[UIView alloc]init];
    // 设置 tag 值, 通过 tag 值找到对应的 tabbar 上小红点
    badgeView.tag = badgeTag + index;
    badgeView.layer.cornerRadius = pointWidth*0.5;
    badgeView.layer.masksToBounds = YES;
    [self addSubview:badgeView];
    
    // 设置小红点位置
    int i = 0;
    for (UIView *subView in self.subviews) {
        if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            // 找到需要加小红点的 view, 根据 frame 设置小红点的位置
            if (i == index) {
                // 向右边的偏移量, 可以根据具体情况调整
                CGFloat x = subView.frame.origin.x + subView.frame.size.width * 0.5 + rightRange;
                CGFloat y = pointWidth * 0.5;
                badgeView.frame = CGRectMake(x, y, pointWidth, pointWidth);
                break;
            }
            i++;
        }
    }
}

// 隐藏小红点
- (void)hideBadgeIndex:(NSInteger)index
{
    for (UIView *subView in self.subviews) {
        if (subView.tag == badgeTag + index) {
            [subView removeFromSuperview];
        }
    }
}



@end
