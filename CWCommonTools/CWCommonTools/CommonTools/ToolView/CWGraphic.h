//
//  CWGraphic.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

#define KCWGraphic [CWGraphic shareGraphic]

@interface CWGraphic : UIView

+ (instancetype)shareGraphic;

// 绘制圆角视图
- (UIView *)createCornerBgViewWithSuperView:(UIView *)superView frame:(CGRect)frame withHEXStr:(NSString *)hexStr cornerRadius:(float)cornerRadius;



@end
