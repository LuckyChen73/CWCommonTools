//
//  UILabel+extension.h
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (extension)

+ (UILabel *)labelWithText:(NSString *)text;

+ (UILabel *)labelWithText:(NSString *)text font:(CGFloat)font;

+ (UILabel *)labelWithText:(NSString *)text font:(CGFloat)font textColor:(UIColor *)color;



@end
