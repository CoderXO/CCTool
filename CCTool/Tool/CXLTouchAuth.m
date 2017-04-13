//
//  CXLTouchAuth.m
//  CXLTest
//
//  Created by cxl on 17/3/31.
//  Copyright © 2017年 cxl. All rights reserved.
//

#import "CXLTouchAuth.h"
#import <LocalAuthentication/LocalAuthentication.h>
#import <UIKit/UIKit.h>

@implementation CXLTouchAuth

+ (void)starTouchOAuthWithTitle:(NSString *)title callBack:(void(^)(KTouchMessageCode code))touchCallBack
{
    
    float version = [UIDevice currentDevice].systemVersion.floatValue;
    
    if (version < 8.0 ) // 判断当前系统版本
    {
        touchCallBack(kVersionLow);
        return;
    }
    
    LAContext *laCtx = [[LAContext alloc] init];
    
    // 2> 判断当前设备是否支持指纹识别功能.
    if (![laCtx canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:NULL]) {
        
        // 如果设备不支持指纹识别功能
        touchCallBack(kNotSupport);
        return;
    };
    
    [laCtx evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:title reply:^(BOOL success, NSError *error) {
        // 如果成功,表示指纹输入正确.
        if (success) {
            touchCallBack(kTouchSuccess);
        } else {
            touchCallBack(kTouchFail);
        }
    }];

}

@end
