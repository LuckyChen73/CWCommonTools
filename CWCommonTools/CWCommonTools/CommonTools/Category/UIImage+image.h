//
//  UIImage+image.h
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/16.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (image)

//压缩图片
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;


@end
