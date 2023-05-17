//
//  CountDownTimeView.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CountDownTimeType) {
    CountDownTimeType_Normal              = 1,
    CountDownTimeType_Word            ,
    CountDownTimeType_Word_AD_MAIN            ,
    CountDownTimeType_FlipNoRepeat     ,
};

@interface CountDownTimeView : UIView
@property (nonatomic,strong) UIColor * viewColor;
@property (nonatomic,strong) UIImageView *backView;
@property (nonatomic,strong) NSString *offtime;
@property (nonatomic,strong) NSDate *timerDate;
@property (nonatomic,assign) CountDownTimeType countDownTimeType;
@property (nonatomic,assign) float labelCornerRadius;

- (void)timerDidUpdateToHour: (NSInteger)hours minutes: (NSInteger)minutes seconds: (NSInteger)seconds millisecond:(NSInteger)millisecond;
- (void)timerDidFinishCounting:(NSString*)resMag;
- (void)closeTimer;
- (void)startTimer;

-(id)initWithCountDownTimeType:(CountDownTimeType)type backView:(UIImageView*)backView;
@end
