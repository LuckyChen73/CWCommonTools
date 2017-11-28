//
//  UIImageView+extension.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/11/28.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UIImageView+extension.h"

@implementation UIImageView (extension)

+ (UIImageView *)imageViewWithImageName:(NSString *)imageName
{
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    [imageView sizeToFit];
    
    return imageView;
}


+ (UIImageView *)imageViewWithImageName:(NSString *)imageName contentMode:(UIViewContentMode)contentMode
{
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    [imageView sizeToFit];
    imageView.contentMode = contentMode;
    
    return imageView;
}




@end
