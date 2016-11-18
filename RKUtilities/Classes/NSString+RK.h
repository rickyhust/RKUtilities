//
//  NSString+RK.h
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import <Foundation/Foundation.h>

@interface NSString (RK)
- (NSString*)md5Encode;
- (NSString*)urlEncode;
- (NSString *)urlDecode;
@end
