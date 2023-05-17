//
//  NSString+Font.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Font)
/// PingFangTC-Semibold
+ (NSString *)getPFTCSemibold;
/// PingFangTC-Regular
+ (NSString *)getPFTCRegular;
/// PingFangTC-Thin
+ (NSString *)getPFTCThin;
/// PingFangTC-Light
+ (NSString *)getPFTCLight;
/// PingFangTC-Medium
+ (NSString *)getPFTCMedium;
/// PingFangTC-Bold
+ (NSString *)getPFTCBold;
/// Arial Rounded MT Bold
+ (NSString *)getARMTBold;
/// Helvetica-Bold
+ (NSString *)getHBold;

@end

NS_ASSUME_NONNULL_END
