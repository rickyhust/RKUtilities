//
//  RKGlobalFunc.m
//  Pods
//
//  Created by apple on 16/11/16.
//
//

#import "RKGlobalFunc.h"

void async_main(dispatch_block_t block) {
    dispatch_async(dispatch_get_main_queue(), ^(){
        if (block) {
            @autoreleasepool {
                block();
            }
        }
    });
}

void async_global(dispatch_block_t block) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(){
        if (block) {
            @autoreleasepool {
                block();
            }
        }
    });
}
