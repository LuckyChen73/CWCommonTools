//
//  CWAnimation.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWAnimation : NSObject
// 每圈转动时间
@property (nonatomic, assign) NSTimeInterval duration;
// 转动次数
@property (nonatomic, assign) NSInteger repeatCount;

// MARK: - 图片旋转动画
- (void)startAnimationWithUIImageView:(UIImageView *)imageView;
// 停止动画
- (void)stopAnimationWithUIImageView:(UIImageView *)imageView;




@end
