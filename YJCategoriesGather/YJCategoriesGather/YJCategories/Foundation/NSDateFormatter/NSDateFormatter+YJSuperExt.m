//
//  NSDateFormatter+YJSuperExt.m
//  YJCategoriesGather
//
//  Created by YJHou on 2015/3/17.
//  Copyright © 2015年 侯跃军 houmanager@Hotmail.com. All rights reserved.
//

#import "NSDateFormatter+YJSuperExt.h"

@implementation NSDateFormatter (YJSuperExt)

/** 根据 dateString 和 format 返回 NSDate */
+ (NSDate *)yj_dateWithString:(NSString *)dateString format:(NSString *)format{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:format];
    return [inputFormatter dateFromString:dateString];
}

/** 根据 date 和 format 返回字符串日期 */
+ (NSString *)yj_stringWithDate:(NSDate *)date format:(NSString *)format{
    return [self _yj_stringWithDate:date format:format];
}

/** yyyy-MM-dd 格式 */
+ (NSString *)yj_yyyyMMddFormat{
    return @"yyyy-MM-dd";
}

/** HH:mm:ss 格式 */
+ (NSString *)yj_HHmmssFormat{
    return @"HH:mm:ss";
}

/** 完整的 yyyy-MM-dd HH:mm:ss */
+ (NSString *)yj_yyyyMMddHHmmssFormat{
    return @"yyyy-MM-dd HH:mm:ss";
}

#pragma mark - Private
/** 根据指定format返回 String 时间 */
+ (NSString *)_yj_stringWithDate:(NSDate *)date format:(NSString *)format{
    NSDateFormatter *formatter = [NSDateFormatter new];
    //    formatter.locale = [NSLocale currentLocale]; // Necessary?
    formatter.dateFormat = format;
    return [formatter stringFromDate:date];
}

@end
