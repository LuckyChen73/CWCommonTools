//
//  CWGetApplicationInfo.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWGetApplicationInfo.h"

@implementation CWGetApplicationInfo
// 获取应用当前版本
+ (NSString *)getAppCurrentVersion
{
    // 当前的版本
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appCurrentVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    
    return appCurrentVersion;
}








@end
