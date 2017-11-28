//
//  UILabel+extension.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UILabel+extension.h"

@implementation UILabel (extension)

+ (UILabel *)labelWithText:(NSString *)text
{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    
    return label;
}


+ (UILabel *)labelWithText:(NSString *)text font:(CGFloat)font
{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.font = [UIFont systemFontOfSize:font];
    
    return label;
}


+ (UILabel *)labelWithText:(NSString *)text font:(CGFloat)font textColor:(UIColor *)color
{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.font = [UIFont systemFontOfSize:font];
    label.textColor = color;
    
    return label;
}




@end
