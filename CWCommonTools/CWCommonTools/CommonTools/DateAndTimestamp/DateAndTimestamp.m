//
//  DateAndTimestamp.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "DateAndTimestamp.h"

@implementation DateAndTimestamp
//MARK: - 系统时间转为指定格式时间字符串
+ (NSString *)dateStringTransformFromNSDate
{
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateStr = [formatter stringFromDate:date];
    
    return dateStr;
}

//MARK: - 获取当前 NSDate
+ (NSDate *)getCurrentDate
{
    return [NSDate dateWithTimeIntervalSinceNow:8 * 60 * 60];
}

//MARK: - 获取当前时间戳
+(NSString *)getNowTimeTimestamp
{
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:8 * 60 * 60];
    NSTimeInterval a = [date timeIntervalSince1970];
    NSString*timeString = [NSString stringWithFormat:@"%0.f", a*1000];//转为字符型
    
    return timeString;
}

//MARK: - 将时间戳转为当前日期字符串
+ (NSString *)currentTimeTransformFromTimestamp:(NSString *)timestamp
{
    // 格式化时间
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    formatter.timeZone = [NSTimeZone timeZoneWithName:@"shanghai"];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    // 毫秒值转化为秒
    NSDate* date = [NSDate dateWithTimeIntervalSince1970:[timestamp doubleValue]*0.001];
    NSString* dateString = [formatter stringFromDate:date];
    return dateString;
}

//MARK: - 将后台时间戳转化为 NSDate
+ (NSDate *)dateTranformFromTimestamp:(NSString *)timestamp
{
    if (timestamp.length <= 10) return nil;
    timestamp = [timestamp substringToIndex:10];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];//timeZoneWithName:@"Asia/Shanghai"
    [formatter setTimeZone:timeZone];
    
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970: [timestamp integerValue]];
    
    return confromTimesp;
}


//MARK: - 将系统NSDate  延后/提前时间 再转化为 NSDate
+ (NSDate *)dateEarlyOrDelayedWithTimeInterval:(NSTimeInterval)timeInterval
{
    // 获取系统当前时间
    NSDate *date = [NSDate date];
    // 系统时区
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    // 获取时间间隔
    NSTimeInterval interval = [zone secondsFromGMTForDate:date];
    // 东八区时间
    NSDate *locaDate = [date dateByAddingTimeInterval:interval];
    
    NSTimeInterval a = [locaDate timeIntervalSince1970];
    a = a - timeInterval * 60;
    
    NSString *timeseed = [NSString stringWithFormat:@"%0.f", a]; // 转为字符型
    
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970: timeseed.doubleValue];
    
    return confromTimesp;
}

















@end
