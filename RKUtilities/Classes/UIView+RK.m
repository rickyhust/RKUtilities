//
//  UIView+RK.m
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import "UIView+RK.h"

@implementation UIView (RK)
- (void)setWidth:(CGFloat)width
{
    if(width < 0)
        return;
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setX:(CGFloat)x
{
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setHeight:(CGFloat)height
{
    if(height < 0)
        return;
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setY:(CGFloat)y
{
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}
@end
