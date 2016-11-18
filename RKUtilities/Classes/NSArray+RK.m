//
//  NSArray+RK.m
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import "NSArray+RK.h"

@implementation NSArray (BaseCategory)

- (id)safeObjectAtIndex:(NSInteger)index
{
    if (index < 0 || index >= self.count) {
        return nil;
    }
    return [self objectAtIndex:index];
}

@end


@implementation NSMutableArray (BaseCategory)

- (void)safeRemoveObjectAtIndex:(NSInteger)index
{
    if (index < 0 || index >= self.count) {
        return;
    }
    [self removeObjectAtIndex:index];
}

@end
