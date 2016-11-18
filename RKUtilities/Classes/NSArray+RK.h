//
//  NSArray+RK.h
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (BaseCategory)

- (id)safeObjectAtIndex:(NSInteger)index;
@end

@interface NSMutableArray (BaseCategory)

- (void)safeRemoveObjectAtIndex:(NSInteger)index;
@end
