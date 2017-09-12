//
//  CWGraphic.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWGraphic.h"
#import "CWColorHex.h"

@implementation CWGraphic

+ (instancetype)shareGraphic
{
    static CWGraphic *circleV = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        circleV = [[CWGraphic alloc]init];
    });
    return circleV;
}

// 绘制圆角视图
- (UIView *)createCornerBgViewWithSuperView:(UIView *)superView frame:(CGRect)frame withHEXStr:(NSString *)hexStr cornerRadius:(float)cornerRadius
{
    UIView *view2 = [[UIView alloc] initWithFrame:frame];
    view2.backgroundColor = [CWColorHex colorWithHexString:hexStr];
    [superView insertSubview:view2 atIndex:0];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view2.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view2.bounds;
    maskLayer.path = maskPath.CGPath;
    view2.layer.mask = maskLayer;
    
    return view2;
}




@end
