//
//  CountDownTimeView+TextColor.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "CountDownTimeView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CountDownTimeView (TextColor)
+(UIColor*)daysLabel_0WithTextColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_1WithTextColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_2WithTextColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_3WithTextColor:(CountDownTimeType)type;
+(UIColor*)hoursLabel_0WithTextColor:(CountDownTimeType)type;
+(UIColor*)hoursLabel_1WithTextColor:(CountDownTimeType)type;
+(UIColor*)minutesLabel_0WithTextColor:(CountDownTimeType)type;
+(UIColor*)minutesLabel_1WithTextColor:(CountDownTimeType)type;
+(UIColor*)secondsLabel_0WithTextColor:(CountDownTimeType)type;
+(UIColor*)secondsLabel_1WithTextColor:(CountDownTimeType)type;
+(UIColor*)milliSecondLabel_0WithTextColor:(CountDownTimeType)type;
+(UIColor*)milliSecondLabel_1WithTextColor:(CountDownTimeType)type;
+(UIColor*)timeLabelWithTextColor:(CountDownTimeType)type;
+(UIColor*)daysUnitLabelWithTextColor:(CountDownTimeType)type;
+(UIColor*)hoursUnitLabelWithTextColor:(CountDownTimeType)type;
+(UIColor*)minutesUnitLabelWithTextColor:(CountDownTimeType)type;
+(UIColor*)secondsUnitLabelWithTextColor:(CountDownTimeType)type;

@end

NS_ASSUME_NONNULL_END
