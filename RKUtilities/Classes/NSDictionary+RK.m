//
//  NSDictionary+RK.m
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import "NSDictionary+RK.h"

@implementation NSDictionary (RK)


- (NSString *)stringForKey:(id)key {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSString class]]) return value;
    if ([value isKindOfClass:[NSNumber class]]) return [(NSNumber*)value stringValue];
    
    return nil;
}

- (NSArray *)arrayForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (![value isKindOfClass:[NSArray class]]) return nil;
    
    return value;
}

- (NSDictionary *)dictionForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (![value isKindOfClass:[NSDictionary class]]) return nil;
    
    return value;
}

- (BOOL)boolForKey:(id)key
{
    NSNumber *boolValue = [self objectForKey:key];
    if ([boolValue isKindOfClass:[NSNumber class]]) {
        return [boolValue boolValue];
    } else if ([boolValue isKindOfClass:[NSString class]]) {
        NSString *boolvaluestr = (NSString *)boolValue;
        if ([boolvaluestr isEqualToString:@"true"] || [boolvaluestr isEqualToString:@"TRUE"]) {
            return true;
        }
        else if([boolvaluestr isEqualToString:@"yes"] || [boolvaluestr isEqualToString:@"YES"]){
            return true;
        }
    }
    return false;
}

- (NSInteger)intForKey:(id)key {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return [value integerValue];
    
    if ([value isKindOfClass:[NSString class]]) return [value integerValue];
    
    return 0;
}

- (NSInteger)intForKey:(id)key default:(NSInteger)defaultValue {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return [value integerValue];
    
    if ([value isKindOfClass:[NSString class]]) return [value integerValue];
    
    return defaultValue;
}

- (long long)longlongForKey:(id)key{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return [value longLongValue];
    
    if ([value isKindOfClass:[NSString class]]) return [value longLongValue];
    
    return 0;
}

- (float)floatForKey:(id)key {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return [value floatValue];
    
    if ([value isKindOfClass:[NSString class]]) return [value floatValue];
    
    return 0;
}

- (float)floatForKey:(id)key default:(float)defaultValue {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return [value floatValue];
    
    if ([value isKindOfClass:[NSString class]]) return [value floatValue];
    
    return defaultValue;
}

- (NSNumber*)numberForKey:(id)key {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) return value;
    
    if ([value isKindOfClass:[NSString class]]) return [NSNumber numberWithDouble:[value doubleValue]];
    
    return nil;
}

- (NSDate *)dateForKey:(id)key {
    
    NSString* value = [self stringForKey:key];
    
    if (![value length]) return nil;
    
    //China Time Zone
    NSString* appendValue = [value stringByAppendingString:@" +0800"];
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    NSDate* ret = nil;
    
    [dateFormat setDateFormat:@"yyyy/MM/dd HH:mm:ss Z"];
    ret = [dateFormat dateFromString:appendValue];
    if(!ret)
    {
        [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
        ret = [dateFormat dateFromString:appendValue];
    }
    
    if(!ret)
    {
        [dateFormat setDateFormat:@"yyyy/MM/dd+HH:mm:ss Z"];
        ret = [dateFormat dateFromString:appendValue];
    }
    
    if(!ret)
    {
        [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss.S Z"];
        ret = [dateFormat dateFromString:appendValue];
    }
    
    if(!ret)
    {
        [dateFormat setDateFormat:@"yyyy-MM-dd Z"];
        ret = [dateFormat dateFromString:appendValue];
    }
    
    if(!ret)
    {
        [dateFormat setDateFormat:@"HH:mm:ss Z"];
        ret = [dateFormat dateFromString:appendValue];
    }
    
    return ret;
}

@end

@implementation NSMutableDictionary (RK)
- (void)safeSetObject:(id)object forKey:(id<NSCopying>)aKey
{
    if (! object || ! aKey) {
        return;
    }
    [self setObject:object forKey:aKey];
}
@end
