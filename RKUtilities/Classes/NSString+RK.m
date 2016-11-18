//
//  NSString+RK.m
//  Pods
//
//  Created by apple on 16/11/17.
//
//

#import "NSString+RK.h"

#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonCryptor.h>

@implementation NSString (RK)
- (NSString*)md5Encode{
    NSData* data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5([data bytes], (CC_LONG)[data length], result);
    
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]] lowercaseString];
}

- (NSString*)urlEncode
{
    NSMutableString *strCopy = [self mutableCopy];
    CFStringRef encodedCFString = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)strCopy,nil,CFSTR("?!@#$^&%*+,:;='\"`<>()[]{}/\\| "),   kCFStringEncodingUTF8);
    NSString *strFinal = [[NSString alloc] initWithString:(__bridge NSString * _Nonnull)(encodedCFString)];
    CFRelease(encodedCFString);
    return strFinal;
}

- (NSString *)urlDecode
{
    // bug fix : 将+转换为空格
    NSString *result = [self stringByReplacingOccurrencesOfString:@"+" withString:@"%20"];
    CFStringRef decodeCFString = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (__bridge CFStringRef)result, CFSTR(""), kCFStringEncodingUTF8);
    NSString *strFinal = [[NSString alloc] initWithString:(__bridge NSString * _Nonnull)(decodeCFString)];
    CFRelease(decodeCFString);
    return strFinal;
}

@end
