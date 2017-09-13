//
//  CWStringTansformDictionary.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/13.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWStringTansformDictionary.h"

@implementation CWStringTansformDictionary

/** 处理返回的字符串－> 数组 */
+ (NSDictionary *)getDictionaryWithString:(NSString *)string
{
    NSString * dataStr;
    NSData *data;
    if (![string hasPrefix:@"{"]) { // 有接口头
        if (string.length < 7) { return nil; }
        dataStr = [string substringFromIndex:6];
        data = [dataStr dataUsingEncoding:NSUTF8StringEncoding];
    }else {
        data = [string dataUsingEncoding:NSUTF8StringEncoding];
    }
    
    if (data == nil) return nil;
    
    NSDictionary *backDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    return backDic;
}




@end
