//
//  CountDownTimeView+color.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "CountDownTimeView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CountDownTimeView (BGColor)
+(UIColor*)daysLabel_0WithBGColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_1WithBGColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_2WithBGColor:(CountDownTimeType)type;
+(UIColor*)daysLabel_3WithBGColor:(CountDownTimeType)type;
+(UIColor*)hoursLabel_0WithBGColor:(CountDownTimeType)type;
+(UIColor*)hoursLabel_1WithBGColor:(CountDownTimeType)type;
+(UIColor*)minutesLabel_0WithBGColor:(CountDownTimeType)type;
+(UIColor*)minutesLabel_1WithBGColor:(CountDownTimeType)type;
+(UIColor*)secondsLabel_0WithBGColor:(CountDownTimeType)type;
+(UIColor*)secondsLabel_1WithBGColor:(CountDownTimeType)type;
+(UIColor*)milliSecondLabel_0WithBGColor:(CountDownTimeType)type;
+(UIColor*)milliSecondLabel_1WithBGColor:(CountDownTimeType)type;
+(UIColor*)timeLabelWithBGColor:(CountDownTimeType)type;
+(UIColor*)daysUnitLabelWithBGColor:(CountDownTimeType)type;
+(UIColor*)hoursUnitLabelWithBGColor:(CountDownTimeType)type;
+(UIColor*)minutesUnitLabelWithBGColor:(CountDownTimeType)type;
+(UIColor*)secondsUnitLabelWithBGColor:(CountDownTimeType)type;

+(UIColor*)daysViewWithBGColor:(CountDownTimeType)type;
+(UIColor*)hoursViewWithBGColor:(CountDownTimeType)type;
+(UIColor*)minutesViewWithBGColor:(CountDownTimeType)type;
+(UIColor*)secondsViewWithBGColor:(CountDownTimeType)type;
+(UIColor*)milliSecondViewWithBGColor:(CountDownTimeType)type;
@end

NS_ASSUME_NONNULL_END
