//
//  UITabBarItem+CWBadge.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/11.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UITabBarItem+CWBadge.h"
#import "UIView+CWBadge.h"


@implementation UITabBarItem (CWBadge)

- (void)showBadge
{
    [[self getActualBadgeSuperView] showBadge];
}

- (void)showBadgeWithCount:(NSInteger)redCount
{
    [[self getActualBadgeSuperView] showBadgeWithCount:redCount]; //调用UIView的显示方法
}

- (UIView *)getActualBadgeSuperView
{
    // 1. get UITabbarButton
    UIView *bottomView = [self valueForKeyPath:@"_view"];
    
    // 2. get imageView, make sure badge front at anytime
    UIView *actualSuperView = nil;
    if (bottomView) {
        actualSuperView = [self findView:bottomView firstSubviewWithClass:NSClassFromString(@"UITabBarSwappableImageView")];
    }
    return actualSuperView;
}


// 获取 UIView
- (UIView *)findView:(UIView *)view firstSubviewWithClass:(Class)cls
{
    __block UIView *targetView = nil;
    [view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull subView, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([subView isKindOfClass:cls]) {
            targetView = subView;
            *stop = YES;
        }
    }];
    return targetView;
}





@end
