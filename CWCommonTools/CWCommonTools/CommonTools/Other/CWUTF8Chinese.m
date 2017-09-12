//
//  IAUTF8Chinese.m
//  IACloud重构
//
//  Created by 深圳策维科技有限公司 on 2017/6/15.
//  Copyright © 2017年 CW. All rights reserved.
//

#import "CWUTF8Chinese.h"

@implementation CWUTF8Chinese

// 将中文乱码进行转码
+ (NSString *)zhuanMa:(NSString *)str
{
    NSString *tempStr;
    
    //修正扫描出来二维码里有中文时为乱码问题
    if ([str canBeConvertedToEncoding:NSShiftJISStringEncoding])
    {
        tempStr = [NSString stringWithCString:[str cStringUsingEncoding:NSShiftJISStringEncoding] encoding:NSUTF8StringEncoding];
        
        //如果转化成utf-8失败，再尝试转化为gbk
        if (tempStr == nil)
        {
            tempStr = [NSString stringWithCString:[str cStringUsingEncoding:NSShiftJISStringEncoding] encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)];
        }
    }
    else if([str canBeConvertedToEncoding:NSISOLatin1StringEncoding])
    {
        tempStr = [NSString stringWithCString:[str cStringUsingEncoding:NSISOLatin1StringEncoding] encoding:NSUTF8StringEncoding];
        
        //如果转化成utf-8失败，再尝试转化为gbk
        if (tempStr == nil)
        {
            tempStr = [NSString stringWithCString:[str cStringUsingEncoding:NSISOLatin1StringEncoding] encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)];
        }
    }
    //如果转化都失败，就显示原始扫描出来的字符串
    if (tempStr == nil)
    {
        tempStr = str;
    }
    
    return tempStr;
}



@end
