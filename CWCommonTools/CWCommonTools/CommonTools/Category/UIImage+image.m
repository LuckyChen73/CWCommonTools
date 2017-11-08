//
//  UIImage+image.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/16.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)

//压缩图片
+ (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    // Return the new image.
    return newImage;
    
}



@end
