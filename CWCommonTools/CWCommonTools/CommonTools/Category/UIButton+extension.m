//
//  UIButton+extension.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UIButton+extension.h"

@implementation UIButton (extension)

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font
{
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    return button;
}

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)titleColor
{
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    
    return button;
}

+ (UIButton *)buttonWithTitle:(NSString *)title font:(CGFloat)font titleColor:(UIColor *)titleColor highlightedTitleColor:(UIColor *)highlightedTitleColor
{
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
    
    return button;
}


+ (UIButton *)buttonWithImage:(NSString *)imageName
{
    UIButton *button = [[UIButton alloc]init];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    return button;
}

+ (UIButton *)buttonWithImage:(NSString *)imageName highlightedImage:(NSString *)highlightedImageName
{
    UIButton *button = [[UIButton alloc]init];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImageName] forState:UIControlStateHighlighted];
    
    return button;
}








@end
