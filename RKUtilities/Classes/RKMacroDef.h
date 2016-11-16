//
//  RKMacroDef.h
//  Pods
//
//  Created by apple on 16/11/16.
//
//

#ifndef RKMacroDef_h
#define RKMacroDef_h

//weak self
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

//log
#ifdef DEBUG
#define DEBUG_NSLog(format, ...) NSLog(format, ##__VA_ARGS__)
#define DEBUG_NSAssert(codition, ...) NSAssert(codition, @"", ##__VA_ARGS__)
#else
#define DEBUG_NSLog(format, ...)
#define DEBUG_NSAssert(codition, ...)
#endif

#define DEBUG_LOG_FUNCTION DEBUG_NSLog(@"%s", __func__)

//ios version check
#define IS_IOS(v)   ([[[UIDevice currentDevice] systemVersion] floatValue] > (v-0.001f))

//hex color
#define ColorOfHexAndAlpha(hex, a) \
[UIColor colorWithRed:(((hex)/0x10000)/255.f) green:((((hex)/0x100)%0x100)/255.f) blue:(((hex)%0x100)/255.f) alpha:a]

#define ColorOfHex(hex) ColorOfHexAndAlpha(hex, (1.f))

//string check nil
#define SafeStr(str) (str?str:@"")
#define SafeStrTo0(str) (str?str:@"0")

//screen size
#define SCREEN_BOUNDS ([UIScreen mainScreen ].bounds)
#define SCREEN_WIDTH (SCREEN_BOUNDS.size.width)
#define SCREEN_HEIGHT (SCREEN_BOUNDS.size.height)

#endif /* RKMacroDef_h */
