//
//  ToolView.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/6.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolView : UIView
//MARK: - 创建 UIView
+ (UIView *)viewWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor;

// 创建label
+ (UILabel *)labelWithFrame:(CGRect)frame text:(NSString *)text font:(NSInteger)font textColor:(UIColor *)textColor;

//MARK: - 创建 UIButton
+ (UIButton *)buttonWithFrame:(CGRect)frame title:(NSString *)title font:(NSInteger)font titleColor:(UIColor *)titleColor;

+ (UIButton *)buttonWithFrame:(CGRect)frame normalTitle:(NSString *)normalTitle highlightedTitle:(NSString *)highlightedTitle font:(NSInteger)font normalTitleColor:(UIColor *)normalTitleColor highlightedTitleColor:(UIColor *)highlightedTitleColor backgroundColor:(UIColor *)backgroundColor normalImage:(NSString *)normalImageName highlightedImage:(NSString *)highlightedImage backgroundImage:(NSString *)backgroundImage;

//MARK: - 创建 UIImageView
+ (UIImageView *)imageViewWithFrame:(CGRect)frame normalImage:(NSString *)image highlightedImage:(NSString *)highlightedImage contentMode:(UIViewContentMode)contentMode;

//MARK: - 创建 textField
+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)textColor;

+ (UITextField *)textFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder textColor:(UIColor *)textColor setTintColor:(UIColor *)setTintColor cornerRadius:(float)cornerRadius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor clearButtonMode:(UITextFieldViewMode)clearButtonMode keyboardType:(UIKeyboardType)keyboardType returnKeyType:(UIReturnKeyType)returnKeyType;



@end
