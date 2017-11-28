//
//  UIImageView+extension.h
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (extension)

+ (UIImageView *)imageViewWithImageName:(NSString *)imageName;

+ (UIImageView *)imageViewWithImageName:(NSString *)imageName contentMode:(UIViewContentMode)contentMode;



@end
