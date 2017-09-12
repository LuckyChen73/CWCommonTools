//
//  IAUTF8Chinese.h
//  IACloud重构
//
//  Created by 深圳策维科技有限公司 on 2017/6/15.
//  Copyright © 2017年 CW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWUTF8Chinese : NSObject

// 将中文乱码进行转码
+ (NSString *)zhuanMa:(NSString *)str;


@end
