//
//  CountDownTimeView+CountDownTimeFontModel.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "CountDownTimeView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CountDownTimeView (Font)
+(UIFont*)daysLabel_0WithFont:(CountDownTimeType)type;
+(UIFont*)daysLabel_1WithFont:(CountDownTimeType)type;
+(UIFont*)daysLabel_2WithFont:(CountDownTimeType)type;
+(UIFont*)daysLabel_3WithFont:(CountDownTimeType)type;
+(UIFont*)hoursLabel_0WithFont:(CountDownTimeType)type;
+(UIFont*)hoursLabel_1WithFont:(CountDownTimeType)type;
+(UIFont*)minutesLabel_0WithFont:(CountDownTimeType)type;
+(UIFont*)minutesLabel_1WithFont:(CountDownTimeType)type;
+(UIFont*)secondsLabel_0WithFont:(CountDownTimeType)type;
+(UIFont*)secondsLabel_1WithFont:(CountDownTimeType)type;
+(UIFont*)milliSecondLabel_0WithFont:(CountDownTimeType)type;
+(UIFont*)milliSecondLabel_1WithFont:(CountDownTimeType)type;
+(UIFont*)timeLabelWithFont:(CountDownTimeType)type;
+(UIFont*)daysUnitLabelWithFont:(CountDownTimeType)type;
+(UIFont*)hoursUnitLabelWithFont:(CountDownTimeType)type;
+(UIFont*)minutesUnitLabelWithFont:(CountDownTimeType)type;
+(UIFont*)secondsUnitLabelWithFont:(CountDownTimeType)type;
@end

NS_ASSUME_NONNULL_END
