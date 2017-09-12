//
//  ToolView.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/6.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "ToolView.h"

@implementation ToolView

//MARK: - 创建 UIView
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor
{
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.backgroundColor = backgroundColor;
    
    return view;
}

//MARK: - 创建 UILabel
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(NSInteger)font textColor:(UIColor *)textColor
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    [label sizeToFit];
    
    return label;
}

//MARK: - 创建 UIButton
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(NSInteger)font titleColor:(UIColor *)titleColor
{
    UIButton *button = [[UIButton alloc]initWithFrame:frame];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    
    return button;
}

+ (UIButton *)buttonWithFrame:(CGRect)frame normalTitle:(NSString *)normalTitle highlightedTitle:(NSString *)highlightedTitle font:(NSInteger)font normalTitleColor:(UIColor *)normalTitleColor highlightedTitleColor:(UIColor *)highlightedTitleColor backgroundColor:(UIColor *)backgroundColor normalImage:(NSString *)normalImageName highlightedImage:(NSString *)highlightedImage backgroundImage:(NSString *)backgroundImage
{
    UIButton *button = [[UIButton alloc]initWithFrame:frame];
    // 两种状态文字
    [button setTitle:normalTitle forState:UIControlStateNormal];
    [button setTitle:highlightedTitle forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    // 两种状态文字颜色
    [button setTitleColor:normalTitleColor forState:UIControlStateNormal];
    [button setTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];
    
    // 按钮背景颜色
    [button setBackgroundColor:backgroundColor];
    
    [button setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    [button setBackgroundImage:[UIImage imageNamed:backgroundImage] forState:UIControlStateNormal];
 
    return button;
}

//MARK: - 创建 UIImageView
+ (UIImageView *)imageViewWithFrame:(CGRect)frame normalImage:(NSString *)image highlightedImage:(NSString *)highlightedImage contentMode:(UIViewContentMode)contentMode
{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.image = [UIImage imageNamed:image];
    imageView.highlightedImage = [UIImage imageNamed:highlightedImage];
    imageView.contentMode = contentMode;
    
    return imageView;
}

//MARK: - 创建 textField
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)textColor
{
    UITextField *textField = [[UITextField alloc]initWithFrame:frame];
    textField.placeholder = placeholder;
    textField.textColor = textColor;
    return textField;
}

+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)textColor setTintColor:(UIColor *)setTintColor cornerRadius:(float)cornerRadius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor clearButtonMode:(UITextFieldViewMode)clearButtonMode keyboardType:(UIKeyboardType)keyboardType returnKeyType:(UIReturnKeyType)returnKeyType
{
    UITextField *textField = [[UITextField alloc]initWithFrame:frame];
    textField.placeholder = placeholder;
    textField.textColor = textColor;
    [[UITextField appearance]setTintColor:setTintColor];
    textField.layer.cornerRadius = cornerRadius;
    textField.layer.borderWidth = borderWidth;
    textField.clearButtonMode = clearButtonMode;
    textField.keyboardType = keyboardType;
    textField.returnKeyType = returnKeyType;
    textField.layer.borderColor = borderColor.CGColor;
    
    return textField;
}



























@end
