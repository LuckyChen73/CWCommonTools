//
//  CWAnimation.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWAnimation.h"

@implementation CWAnimation

// MARK: - 图片旋转动画
- (void)startAnimationWithUIImageView:(UIImageView *)imageView
{
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = self.duration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = self.repeatCount;//重复次数
    
    [imageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    
}

// 停止动画
- (void)stopAnimationWithUIImageView:(UIImageView *)imageView
{
    [imageView.layer removeAnimationForKey:@"rotationAnimation"];
}




@end
