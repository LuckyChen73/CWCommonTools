//
//  CWDateManager.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/8.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWDateManager.h"

@implementation CWDateManager

+(NSString *)getWeekDay
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    NSInteger unitFlags = NSCalendarUnitWeekday;
    NSDate * now= [NSDate date];
    comps = [calendar components:unitFlags fromDate:now];
    NSInteger week = [comps weekday];
    NSString *weekDay = [[NSString alloc]init];
    
    switch (week) {
        case 1:
            weekDay = @"星期日";
            break;
        case 2:
            weekDay = @"星期一";
            break;
        case 3:
            weekDay = @"星期二";
            break;
        case 4:
            weekDay = @"星期三";
            break;
        case 5:
            weekDay = @"星期四";
            break;
        case 6:
            weekDay = @"星期五";
            break;
        case 7:
            weekDay = @"星期六";
            break;
        default:
            break;
    }
    return weekDay;
    
}


@end
