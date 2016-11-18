//
//  NSDictionary+RK.h
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (RK)

- (NSString *)stringForKey:(id)key;
- (NSArray *)arrayForKey:(id)key;
- (NSDictionary*)dictionForKey:(id)key;

- (BOOL)boolForKey:(id)key;
- (NSInteger)intForKey:(id)key;
- (NSInteger)intForKey:(id)key default:(NSInteger)defaultValue;
- (long long)longlongForKey:(id)key;
- (float)floatForKey:(id)key;
- (float)floatForKey:(id)key default:(float)defaultValue;
- (NSNumber*)numberForKey:(id)key;

- (NSDate *)dateForKey:(id)key;
@end

@interface NSMutableDictionary (RK)
- (void)safeSetObject:(id)object forKey:(id<NSCopying>)aKey;
@end
