//
//  IAGetMacAddress.h
//  IACloud重构
//
//  Created by 深圳策维科技有限公司 on 2017/7/5.
//  Copyright © 2017年 CW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWGetMacAddress : NSObject

+ (NSString *)getMacAddress;

// 获取当前 IP
+ (NSString*)getCurrentLocalIP;

// 获取当前网络 ssid
+ (NSString *)getCurreWiFiSsid;

@end
