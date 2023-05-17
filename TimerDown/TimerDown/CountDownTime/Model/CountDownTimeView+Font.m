//
//  CountDownTimeView+Font.m
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "CountDownTimeView+Font.h"

@implementation CountDownTimeView (CountDownTimeFontModel)
+(UIFont*)daysLabel_0WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:15 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)daysLabel_1WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:15 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)daysLabel_2WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:15 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)daysLabel_3WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:15 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)hoursLabel_0WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)hoursLabel_1WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)minutesLabel_0WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)minutesLabel_1WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)secondsLabel_0WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)secondsLabel_1WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)milliSecondLabel_0WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)milliSecondLabel_1WithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)timeLabelWithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)daysUnitLabelWithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:15 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Semibold" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:10 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)hoursUnitLabelWithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)minutesUnitLabelWithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

+(UIFont*)secondsUnitLabelWithFont:(CountDownTimeType)type{
    UIFont *font = [[UIFont alloc] init];
    switch (type) {
        case CountDownTimeType_Normal:
            font = [UIFont fontWithName:@"PingFangTC-Medium" size:12 * kViewWidthScale];
            break;
        case CountDownTimeType_Word:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:11 * kViewWidthScale];
            break;
        case CountDownTimeType_Word_AD_MAIN:
            font = [UIFont fontWithName:@"PingFangTC-Light" size:9 * kViewWidthScale];
            break;
        case CountDownTimeType_FlipNoRepeat:
            font = [UIFont fontWithName:@"PingFangTC-Regular" size:24 * kViewWidthScale];
            break;
        default:
            break;
    }
    return font;
}

@end

