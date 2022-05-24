//
//  UIApplication+Lookin.h
//  LookinServer
//
//  Created by Zie Zheng on 2022/5/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (Lookin)

+ (UIApplication *)lks_sharedApplication;

+ (NSArray <UIWindow *> *)lks_windows;

@end

NS_ASSUME_NONNULL_END
