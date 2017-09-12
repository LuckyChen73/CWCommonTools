//
//  DateAndTimestamp.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateAndTimestamp : NSObject
//MARK: - 系统时间转为指定格式时间字符串
+ (NSString *)dateStringTransformFromNSDate;

//MARK: - 获取当前 NSDate
+ (NSDate *)getCurrentDate;

//MARK: - 获取当前时间戳
+(NSString *)getNowTimeTimestamp;

//MARK: - 将时间戳转为当前日期字符串
+ (NSString *)currentTimeTransformFromTimestamp:(NSString *)timestamp;

//MARK: - 将后台时间戳转化为 NSDate
+ (NSDate *)dateTranformFromTimestamp:(NSString *)timestamp;

//MARK: - 将系统NSDate  延后/提前时间 再转化为 NSDate
+ (NSDate *)dateEarlyOrDelayedWithTimeInterval:(NSTimeInterval)timeInterval;





@end
