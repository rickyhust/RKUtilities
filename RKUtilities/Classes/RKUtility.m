//
//  RKUtility.m
//  Pods
//
//  Created by apple on 16/11/16.
//
//

#import "RKUtility.h"

@implementation RKUtility

+ (NSDate *)getDateTimeWith:(NSString *)time timeFormatter:(NSString *)formatterStr
{
    if(0 == time.length || 0 == formatterStr.length) return nil;
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:formatterStr];
    NSDate *date =[dateFormat dateFromString:time];
    return date;
}

+ (NSString *)getDateStringWith:(NSDate *)date timeFormatter:(NSString *)formateString
{
    if (nil == date || 0 == formateString.length) return nil;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formateString];
    NSString *dateStr = [formatter stringFromDate:date];
    return dateStr;
}

@end
