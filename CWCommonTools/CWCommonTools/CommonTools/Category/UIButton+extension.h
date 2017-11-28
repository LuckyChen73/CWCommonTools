//
//  UIButton+extension.h
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (extension)

+ (UIButton *)buttonWithTitle:(NSString *)title;

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font;

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)titleColor;

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)titleColor highlightedTitleColor:(UIColor *)highlightedTitleColor;

+ (UIButton *)buttonWithImage:(NSString *)imageName;

+ (UIButton *)buttonWithImage:(NSString *)imageName highlightedImage:(NSString *)highlightedImageName;

@end
