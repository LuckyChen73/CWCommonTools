//
//  UIView+CWBadge.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/11.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UIView+CWBadge.h"
#import <objc/runtime.h>

static char badgeViewKey;
static NSInteger const pointWidth = 6; //小红点的宽高
static NSInteger const rightRange = 2; //距离控件右边的距离
static CGFloat const badgeFont = 9; //字体的大小

@implementation UIView (CWBadge)

- (void)showBadge
{
    if (self.badge == nil) {
        CGRect frame = CGRectMake(CGRectGetWidth(self.frame)-rightRange*4, CGRectGetMinY(self.frame), pointWidth, pointWidth);
        self.badge = [[UILabel alloc]initWithFrame:frame];
        self.badge.backgroundColor = [UIColor redColor];
        
        self.badge.layer.cornerRadius = pointWidth/2;
        self.badge.layer.masksToBounds = YES;
        
        [self addSubview:self.badge];
        [self bringSubviewToFront:self.badge];
    }
}

- (void)showBadgeWithCount:(NSInteger)count
{
    if (count < 0) {
        return;
    }
    
    [self showBadge];
    self.badge.textColor = [UIColor whiteColor];
    self.badge.font = [UIFont systemFontOfSize:badgeFont];
    self.badge.textAlignment = NSTextAlignmentCenter;
    self.badge.text = (count > 99 ? [NSString stringWithFormat:@"99+"] : [NSString stringWithFormat:@"%@", @(count)]);
    [self.badge sizeToFit];
    CGRect frame = self.badge.frame;
    frame.size.width += 4;
    frame.size.height += 4;
    frame.origin.y = frame.size.height / 2 - 6;
    if (CGRectGetWidth(frame) < CGRectGetHeight(frame)) {
        frame.size.width = CGRectGetHeight(frame);
    }
    
    self.badge.frame = frame;
    self.badge.layer.cornerRadius = CGRectGetHeight(self.frame);
    
}

- (void)hiddenBadge
{
    // 从父视图移除
    [self.badge removeFromSuperview];
    self.badge = nil;
}

// getter和 setter
- (UILabel *)badge
{
    return objc_getAssociatedObject(self, &badgeViewKey);
}

- (void)setBadge:(UILabel *)badge
{
    objc_setAssociatedObject(self, &badgeViewKey, badge, OBJC_ASSOCIATION_RETAIN);
}


@end
