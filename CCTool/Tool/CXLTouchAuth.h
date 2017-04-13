//
//  CXLTouchAuth.h
//  CXLTest
//
//  Created by cxl on 17/3/31.
//  Copyright © 2017年 cxl. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 指纹认证消息结果 */
typedef NS_ENUM(NSInteger, KTouchMessageCode){
    kTouchSuccess = 0,    //认证成功
    kTouchFail    = 1,    //认证失败
    kVersionLow   = 2,    //版本太低
    kNotSupport   = 3
};//link类型

@interface CXLTouchAuth : NSObject

/** 
  title: 输入指纹的提示信息
  touchCallBack: 输入指纹回调
 */
+ (void)starTouchOAuthWithTitle:(NSString *)title callBack:(void(^)(KTouchMessageCode code))touchCallBack;

@end
