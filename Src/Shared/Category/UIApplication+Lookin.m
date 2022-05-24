//
//  UIApplication+Lookin.m
//  LookinServer
//
//  Created by Zie Zheng on 2022/5/24.
//

#import "UIApplication+Lookin.h"
#import <objc/message.h>

@implementation UIApplication (Lookin)

+ (UIApplication *)lks_sharedApplication {
    return ((UIApplication * (*)(id, SEL))(void *) objc_msgSend)(UIApplication.class, sel_registerName("sharedApplication"));
}

+ (NSArray <UIWindow *> *)lks_windows {
    NSArray *windows = [self lks_sharedApplication].windows;
    if (windows.count == 0) {
        windows = @[[self lks_sharedApplication].keyWindow];
    }
    return [windows copy];
}


@end
