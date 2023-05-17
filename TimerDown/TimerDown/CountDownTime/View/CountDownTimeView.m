//
//  CountDownTimeView.m
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "CountDownTimeView.h"
#import "Timer.h"
#import "TXScrollLabelView+Extension.h"
#import <TXScrollLabelView.h>
#import "CustomUILabel.h"
#import "CountDownTimeView+BGColor.h"
#import "CountDownTimeView+Font.h"
#import "CountDownTimeView+TextColor.h"

@interface CountDownTimeView()<TimeDelegate>
@property (nonatomic,strong) Timer * countDownNew;
@property (nonatomic,strong) TXScrollLabelView * daysLabel_0;
@property (nonatomic,strong) TXScrollLabelView * daysLabel_1;
@property (nonatomic,strong) TXScrollLabelView * daysLabel_2;
@property (nonatomic,strong) TXScrollLabelView * daysLabel_3;
@property (nonatomic,strong) TXScrollLabelView * hoursLabel_0;
@property (nonatomic,strong) TXScrollLabelView * hoursLabel_1;
@property (nonatomic,strong) TXScrollLabelView * minutesLabel_0;
@property (nonatomic,strong) TXScrollLabelView * minutesLabel_1;
@property (nonatomic,strong) TXScrollLabelView * secondsLabel_0;
@property (nonatomic,strong) TXScrollLabelView * secondsLabel_1;
@property (nonatomic,strong) TXScrollLabelView * milliSecondLabel_0;
@property (nonatomic,strong) TXScrollLabelView * milliSecondLabel_1;
@property (nonatomic,strong) UILabel * timeLabel;

@property (nonatomic,strong) CustomUILabel * daysUnitLabel;
@property (nonatomic,strong) CustomUILabel * hoursUnitLabel;
@property (nonatomic,strong) CustomUILabel * minutesUnitLabel;
@property (nonatomic,strong) CustomUILabel * secondsUnitLabel;

@property (nonatomic,assign) float dayHourSpacing;
@property (nonatomic,assign) float daySpacing;
@property (nonatomic,assign) float hourSpacing;
@property (nonatomic,assign) float minutesSpacing;
@property (nonatomic,assign) float secondsSpacing;
@property (nonatomic,assign) float milliSecondSpacing;

@property (nonatomic,assign) float isFlipFromTop;

@property (nonatomic,strong) NSString * daysUnitStr;
@property (nonatomic,strong) NSString * hoursUnitStr;
@property (nonatomic,strong) NSString * minutesUnitStr;
@property (nonatomic,strong) NSString * secondsUnitStr;

@property (nonatomic,strong) UIView * daysView;
@property (nonatomic,strong) UIView * hoursView;
@property (nonatomic,strong) UIView * minutesView;
@property (nonatomic,strong) UIView * secondsView;
@property (nonatomic,strong) UIView * milliSecondView;

@end

@implementation CountDownTimeView
{
    CGSize labelTimeSize;
    CGSize labelTimeUnitSize;
    NSString * daysStr;
    NSString * hoursStr;
    NSString * minutesStr;
    NSString * secondsStr;
    NSString * milliSecondStr;
    UILabel *test;
    
    float sumWidth;
    float selfViewOffsetX;
    NSMutableArray *dayLabelArr;
    float labelHeight;
    float labelWidth;
}

-(id)initWithCountDownTimeType:(CountDownTimeType)type backView:(UIImageView*)backView{
    if (self == [super init]) {
        self.countDownTimeType = type;
        self.backView = backView;
        test = [[UILabel alloc]init];
        dayLabelArr = [[NSMutableArray alloc]init];
        self.labelCornerRadius = 2;
        daysStr = @"0000";
        hoursStr = @"00";
        minutesStr = @"00";
        secondsStr = @"00";
        milliSecondStr = @"00";
        
        [self setViewValue];
    }
    return self;
}

-(void)setViewValue{
    
    switch (self.countDownTimeType) {
        case CountDownTimeType_Normal:
            NSLog(@"CountDownTimeType_Normal");
            self.viewColor = [UIColor clearColor];
            
            self.dayHourSpacing = 8.4 * kViewWidthScale;
            self.daySpacing = 0 * kViewWidthScale;
            self.hourSpacing = 0 * kViewWidthScale;
            self.minutesSpacing = 0 * kViewWidthScale;
            self.secondsSpacing = 0 * kViewWidthScale;
            self.milliSecondSpacing = 0 * kViewWidthScale;
            
            self.daysUnitStr = NSLocalizedString(@"天",nil);
            self.hoursUnitStr = NSLocalizedString(@":",nil);
            self.minutesUnitStr = NSLocalizedString(@":",nil);
            self.secondsUnitStr = NSLocalizedString(@":",nil);
            
            self.isFlipFromTop = NO;
            labelHeight = 18 * kViewWidthScale;
            labelWidth = 0 * kViewWidthScale;
            break;
        case CountDownTimeType_Word:{
            NSLog(@"CountDownTimeType_Word");
            self.viewColor = [UIColor clearColor];
            
            self.dayHourSpacing = 8.9 * kViewWidthScale;
            self.daySpacing = 0 * kViewWidthScale;
            self.hourSpacing = 0 * kViewWidthScale;
            self.minutesSpacing = 0 * kViewWidthScale;
            self.secondsSpacing = 0 * kViewWidthScale;
            self.milliSecondSpacing = 0 * kViewWidthScale;
            
            self.daysUnitStr = NSLocalizedString(@"天",nil);
            self.hoursUnitStr = NSLocalizedString(@"時",nil);
            self.minutesUnitStr = NSLocalizedString(@"分",nil);
            self.secondsUnitStr = NSLocalizedString(@"秒",nil);
            
            self.isFlipFromTop = NO;
            labelHeight = 23 * kViewWidthScale;
            labelWidth = 0 * kViewWidthScale;
            break;
        }
        case CountDownTimeType_Word_AD_MAIN:{
            NSLog(@"CountDownTimeType_Word");
            self.viewColor = [UIColor clearColor];
            
            self.dayHourSpacing = 8.9 * kViewWidthScale;
            self.daySpacing = 0 * kViewWidthScale;
            self.hourSpacing = 0 * kViewWidthScale;
            self.minutesSpacing = 0 * kViewWidthScale;
            self.secondsSpacing = 0 * kViewWidthScale;
            self.milliSecondSpacing = 0 * kViewWidthScale;
            
            self.daysUnitStr = NSLocalizedString(@"天",nil);
            self.hoursUnitStr = NSLocalizedString(@"時",nil);
            self.minutesUnitStr = NSLocalizedString(@"分",nil);
            self.secondsUnitStr = NSLocalizedString(@"秒",nil);
            
            self.isFlipFromTop = NO;
            labelHeight = 20 * kViewWidthScale;
            labelWidth = 0 * kViewWidthScale;
            break;
        }
        case CountDownTimeType_FlipNoRepeat:
            NSLog(@"CountDownTimeType_FlipNoRepeat");
            self.viewColor = [UIColor clearColor];
            
            self.dayHourSpacing = 15.4 * kViewWidthScale;
            self.daySpacing = 0 * kViewWidthScale;
            self.hourSpacing = 3 * kViewWidthScale;
            self.minutesSpacing = 3 * kViewWidthScale;
            self.secondsSpacing = 3 * kViewWidthScale;
            self.milliSecondSpacing = 3 * kViewWidthScale;
            
            self.daysUnitStr = NSLocalizedString(@"天",nil);
            self.hoursUnitStr = NSLocalizedString(@":",nil);
            self.minutesUnitStr = NSLocalizedString(@":",nil);
            self.secondsUnitStr = NSLocalizedString(@":",nil);
            
            self.isFlipFromTop = YES;
            labelHeight = 31 * kViewWidthScale;
            labelWidth = 5 * kViewWidthScale;
            break;
        default:
            break;
    }
    
    [self createUI];
}

-(void)createUI
{
    UIView *daysView = [[UIView alloc]init];
    daysView.backgroundColor = [CountDownTimeView daysViewWithBGColor:self.countDownTimeType];
    [daysView setCornerRadius:self.labelCornerRadius];
    daysView.userInteractionEnabled = YES;
    [self addSubview:daysView];
    
    UIView *hoursView = [[UIView alloc]init];
    hoursView.backgroundColor = [CountDownTimeView hoursViewWithBGColor:self.countDownTimeType];
    [hoursView setCornerRadius:self.labelCornerRadius];
    hoursView.userInteractionEnabled = YES;
    [self addSubview:hoursView];
    
    UIView *minutesView = [[UIView alloc]init];
    minutesView.backgroundColor = [CountDownTimeView minutesViewWithBGColor:self.countDownTimeType];
    [minutesView setCornerRadius:self.labelCornerRadius];
    minutesView.userInteractionEnabled = YES;
    [self addSubview:minutesView];
    
    UIView *secondsView = [[UIView alloc]init];
    secondsView.backgroundColor = [CountDownTimeView secondsViewWithBGColor:self.countDownTimeType];
    [secondsView setCornerRadius:self.labelCornerRadius];
    secondsView.userInteractionEnabled = YES;
    [self addSubview:secondsView];
    
    UIView *milliSecondView = [[UIView alloc]init];
    milliSecondView.backgroundColor = [CountDownTimeView milliSecondViewWithBGColor:self.countDownTimeType];
    [milliSecondView setCornerRadius:self.labelCornerRadius];
    milliSecondView.userInteractionEnabled = YES;
    [self addSubview:milliSecondView];
    
    //day
    [self setTimeLabelSizeWithFont:[CountDownTimeView daysLabel_0WithFont:self.countDownTimeType]];
    [self setUnitLabelSizeWithFont:[CountDownTimeView daysUnitLabelWithFont:self.countDownTimeType] unitStr:self.daysUnitStr];
    self.daysLabel_0 = [self createTXScrollLabelView:CGRectMake(sumWidth,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView daysLabel_0WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView daysLabel_0WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView daysLabel_0WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + labelWidth;
    [dayLabelArr addObject:self.daysLabel_0];
    self.daysLabel_1 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.daySpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView daysLabel_1WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView daysLabel_1WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView daysLabel_1WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.daySpacing + labelWidth;
    [dayLabelArr addObject:self.daysLabel_1];
    self.daysLabel_2 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.daySpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView daysLabel_2WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView daysLabel_2WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView daysLabel_2WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.daySpacing + labelWidth;
    [dayLabelArr addObject:self.daysLabel_2];
    self.daysLabel_3 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.daySpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView daysLabel_3WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView daysLabel_3WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView daysLabel_3WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.daySpacing + labelWidth;
    [dayLabelArr addObject:self.daysLabel_3];
    
    CustomUILabel *daysUnitLabel = [[CustomUILabel alloc]initWithFrame:CGRectMake(sumWidth,0,labelTimeUnitSize.width + labelWidth,labelHeight)];
    daysUnitLabel.font = [CountDownTimeView daysUnitLabelWithFont:self.countDownTimeType];
    daysUnitLabel.textAlignment = NSTextAlignmentCenter;
    daysUnitLabel.textColor = [CountDownTimeView daysUnitLabelWithTextColor:self.countDownTimeType];
    daysUnitLabel.text = self.daysUnitStr;
    daysUnitLabel.backgroundColor = [CountDownTimeView daysUnitLabelWithBGColor:self.countDownTimeType];
    [self addSubview:daysUnitLabel];
    self.daysUnitLabel = daysUnitLabel;
    sumWidth = labelTimeUnitSize.width + sumWidth + labelWidth;
    
    //hour
    [self setTimeLabelSizeWithFont:[CountDownTimeView hoursLabel_0WithFont:self.countDownTimeType]];
    [self setUnitLabelSizeWithFont:[CountDownTimeView hoursUnitLabelWithFont:self.countDownTimeType] unitStr:self.hoursUnitStr];
    self.hoursLabel_0 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.dayHourSpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView hoursLabel_0WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView hoursLabel_0WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView hoursLabel_0WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.dayHourSpacing + labelWidth;
    self.hoursLabel_1 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.hourSpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView hoursLabel_1WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView hoursLabel_1WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView hoursLabel_1WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.hourSpacing + labelWidth;
    
    CustomUILabel *hoursUnitLabel = [[CustomUILabel alloc]initWithFrame:CGRectMake(sumWidth,0,labelTimeUnitSize.width + labelWidth,labelHeight)];
    hoursUnitLabel.font = [CountDownTimeView hoursUnitLabelWithFont:self.countDownTimeType];
    hoursUnitLabel.textAlignment = NSTextAlignmentCenter;
    hoursUnitLabel.textColor = [CountDownTimeView hoursUnitLabelWithTextColor:self.countDownTimeType];
    hoursUnitLabel.text = self.hoursUnitStr;
    hoursUnitLabel.backgroundColor = [CountDownTimeView hoursUnitLabelWithBGColor:self.countDownTimeType];
    [self addSubview:hoursUnitLabel];
    self.hoursUnitLabel = hoursUnitLabel;
    sumWidth = labelTimeUnitSize.width + sumWidth + labelWidth;
    
    //min
    self.minutesLabel_0 = [self createTXScrollLabelView:CGRectMake(sumWidth,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView minutesLabel_0WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView minutesLabel_0WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView minutesLabel_0WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + labelWidth;
    self.minutesLabel_1 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.minutesSpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView minutesLabel_1WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView minutesLabel_1WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView minutesLabel_1WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.minutesSpacing + labelWidth;
    
    CustomUILabel *minutesUnitLabel = [[CustomUILabel alloc]initWithFrame:CGRectMake(sumWidth,0,labelTimeUnitSize.width + labelWidth,labelHeight)];
    minutesUnitLabel.font = [CountDownTimeView minutesUnitLabelWithFont:self.countDownTimeType];
    minutesUnitLabel.textAlignment = NSTextAlignmentCenter;
    minutesUnitLabel.textColor = [CountDownTimeView minutesUnitLabelWithTextColor:self.countDownTimeType];
    minutesUnitLabel.text = self.minutesUnitStr;
    minutesUnitLabel.backgroundColor = [CountDownTimeView minutesUnitLabelWithBGColor:self.countDownTimeType];
    [self addSubview:minutesUnitLabel];
    self.minutesUnitLabel = minutesUnitLabel;
    sumWidth = labelTimeUnitSize.width + sumWidth + labelWidth;
    
    //sec
    self.secondsLabel_0 = [self createTXScrollLabelView:CGRectMake(sumWidth,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView secondsLabel_0WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView secondsLabel_0WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView secondsLabel_0WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + labelWidth;
    self.secondsLabel_1 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.secondsSpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView secondsLabel_1WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView secondsLabel_1WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView secondsLabel_1WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.secondsSpacing + labelWidth;
    
    CustomUILabel *secondsUnitLabel = [[CustomUILabel alloc]initWithFrame:CGRectMake(sumWidth,0,labelTimeUnitSize.width + labelWidth,labelHeight)];
    secondsUnitLabel.font = [CountDownTimeView secondsUnitLabelWithFont:self.countDownTimeType];
    secondsUnitLabel.textAlignment = NSTextAlignmentCenter;
    secondsUnitLabel.textColor = [CountDownTimeView secondsUnitLabelWithTextColor:self.countDownTimeType];
    secondsUnitLabel.text = self.secondsUnitStr;
    secondsUnitLabel.backgroundColor = [CountDownTimeView secondsUnitLabelWithBGColor:self.countDownTimeType];
    [self addSubview:secondsUnitLabel];
    self.secondsUnitLabel = secondsUnitLabel;
    sumWidth = labelTimeUnitSize.width + sumWidth + labelWidth;
    
    //milliSecond
    self.milliSecondLabel_0 = [self createTXScrollLabelView:CGRectMake(sumWidth,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView milliSecondLabel_0WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView milliSecondLabel_0WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView milliSecondLabel_0WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + labelWidth;
    self.milliSecondLabel_1 = [self createTXScrollLabelView:CGRectMake(sumWidth + self.milliSecondSpacing,0,labelTimeSize.width + labelWidth,labelHeight) font:[CountDownTimeView milliSecondLabel_1WithFont:self.countDownTimeType] backgroundColor:[CountDownTimeView milliSecondLabel_1WithBGColor:self.countDownTimeType] titleColor:[CountDownTimeView milliSecondLabel_1WithTextColor:self.countDownTimeType]];
    sumWidth = labelTimeSize.width + sumWidth + self.milliSecondSpacing + labelWidth;
    
    UILabel *timeLabel = [[UILabel alloc]init];
    timeLabel.font = [CountDownTimeView timeLabelWithFont:self.countDownTimeType];
    timeLabel.textAlignment = NSTextAlignmentCenter;
    timeLabel.textColor = [CountDownTimeView timeLabelWithTextColor:self.countDownTimeType];
    timeLabel.text = @"";
    timeLabel.backgroundColor = [CountDownTimeView timeLabelWithBGColor:self.countDownTimeType];
    [self addSubview:timeLabel];
    [timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.width.equalTo(self.mas_width);
        make.top.equalTo(self.mas_top);
        make.height.equalTo(self.mas_height);
    }];
    self.timeLabel = timeLabel;
    self.timeLabel.hidden=YES;
    
    
    [daysView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.top.equalTo(self.mas_top);
        make.height.offset(self->labelHeight);
        make.right.equalTo(self.daysLabel_3.mas_right).offset(5 * kViewWidthScale);
    }];
    self.daysView = daysView;
    
    [hoursView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.hoursLabel_0.mas_left);
        make.top.equalTo(self.mas_top);
        make.height.offset(self->labelHeight);
        make.right.equalTo(self.hoursLabel_1.mas_right);
    }];
    self.hoursView = hoursView;
    
    [minutesView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.minutesLabel_0.mas_left);
        make.top.equalTo(self.mas_top);
        make.height.offset(self->labelHeight);
        make.right.equalTo(self.minutesLabel_1.mas_right);
    }];
    self.minutesView = minutesView;
    
    [secondsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.secondsLabel_0.mas_left);
        make.top.equalTo(self.mas_top);
        make.height.offset(self->labelHeight);
        make.right.equalTo(self.secondsLabel_1.mas_right);
    }];
    self.secondsView = secondsView;
    
    [milliSecondView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.milliSecondLabel_0.mas_left);
        make.top.equalTo(self.mas_top);
        make.height.offset(self->labelHeight);
        make.right.equalTo(self.milliSecondLabel_1.mas_right);
    }];
    self.milliSecondView = milliSecondView;
    
    switch (self.countDownTimeType) {
        case CountDownTimeType_Normal:
            NSLog(@"CountDownTimeType_Normal");
            break;
        case CountDownTimeType_Word:
            NSLog(@"CountDownTimeType_Word");
            break;
        case CountDownTimeType_Word_AD_MAIN:
            NSLog(@"CountDownTimeType_Word_AD_MAIN");
            break;
        case CountDownTimeType_FlipNoRepeat:
            NSLog(@"CountDownTimeType_FlipNoRepeat");
            [self.daysUnitLabel setCornerRadius:self.labelCornerRadius];
            self.daysUnitLabel.userInteractionEnabled = YES;
            [self setLabelIsBottom:self.daysUnitLabel];
            break;
        default:
            break;
    }
    
}

-(TXScrollLabelView*)createTXScrollLabelView:(CGRect)rect font:(UIFont*)font backgroundColor:(UIColor*)backgroundColor titleColor:(UIColor*)titleColor{
    TXScrollLabelView *scrollLabelView = [[TXScrollLabelView alloc]initWithFrame:rect];
    
    [self addSubview:scrollLabelView];
    scrollLabelView.backgroundColor = backgroundColor;
    scrollLabelView.font = font;
    scrollLabelView.textAlignment = NSTextAlignmentCenter;
    scrollLabelView.scrollTitleColor = titleColor;
    scrollLabelView.scrollType = TXScrollLabelViewTypeFlipNoRepeat;
    [scrollLabelView setCornerRadius:self.labelCornerRadius];
    scrollLabelView.userInteractionEnabled = YES;
    return scrollLabelView;
}

- (void)timerDidUpdateToHour: (NSInteger)hours minutes: (NSInteger)minutes seconds: (NSInteger)seconds millisecond:(NSInteger)millisecond {
    
    //            hours = 8957;//218957
    
    selfViewOffsetX = 0;
    [self uiSetHidden:NO];
    //day
    NSString *tempTime = [NSString stringWithFormat:@"%@",daysStr];
    NSString *dayTimeStr = [NSString stringWithFormat:@"%d",hours/24];
    daysStr = [NSString stringWithFormat:@"%.4d",hours/24];
    if ([dayTimeStr intValue]==0) {
        dayTimeStr = @"";
    }
    
    if ([dayTimeStr length]>4) {
        dayTimeStr = [dayTimeStr substringFromIndex:[dayTimeStr length]-4];
    }
    for (int i = 0; i < (int)[dayLabelArr count]; i++) {
        TXScrollLabelView *tempScrollLabelView = [dayLabelArr objectAtIndex:i];
        tempScrollLabelView.hidden = YES;
    }
    
    [self setTimeLabelSizeWithFont:[CountDownTimeView daysLabel_0WithFont:self.countDownTimeType]];
    [self setUnitLabelSizeWithFont:[CountDownTimeView daysUnitLabelWithFont:self.countDownTimeType] unitStr:self.daysUnitStr];
    if ([dayTimeStr intValue]>0) {
        int j = 0;
        for (int i = ((int)[dayLabelArr count]-(int)[dayTimeStr length]); i < [dayLabelArr count]; i++ ) {
            int dayTime_0 = [[dayTimeStr substringWithRange:NSMakeRange(j, 1)]intValue];
            int dayTime_0Temp = [[tempTime substringWithRange:NSMakeRange(i, 1)]intValue];
            TXScrollLabelView *tempScrollLabelView = [dayLabelArr objectAtIndex:i];
            if ((dayTime_0 != dayTime_0Temp) && self.isFlipFromTop) {
                
                tempScrollLabelView.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(dayTime_0 + 1) % 10];
                tempScrollLabelView.downLabel.text = [NSString stringWithFormat:@"%ld",(long)dayTime_0];
                [tempScrollLabelView flipAnimationWithDelay:1];
            }
            else {
                tempScrollLabelView.upLabel.text = [NSString stringWithFormat:@"%ld",(long)dayTime_0];
            }
            j++;
            tempScrollLabelView.hidden = NO;
            
        }
        for (int i = 0; i < abs((int)[dayTimeStr length] - (int)[dayLabelArr count]); i++) {
            selfViewOffsetX = labelTimeSize.width + selfViewOffsetX + self.daySpacing;
        }
        
        self.daysUnitLabel.hidden = NO;
        
        [self.daysView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.mas_left).offset(self->selfViewOffsetX);
            make.height.offset(self->labelHeight);
            make.top.equalTo(self.mas_top);
            make.right.equalTo(self.daysLabel_3.mas_right).offset(5 * kViewWidthScale);
        }];
    }
    else {
        // daysLabel_0
        selfViewOffsetX = labelTimeSize.width + selfViewOffsetX;
        // daysLabel_1
        selfViewOffsetX = labelTimeSize.width + selfViewOffsetX + self.daySpacing;
        // daysLabel_2
        selfViewOffsetX = labelTimeSize.width + selfViewOffsetX + self.daySpacing;
        // daysLabel_3
        selfViewOffsetX = labelTimeSize.width + selfViewOffsetX + self.daySpacing;
        [self.daysView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.mas_left).offset(self->selfViewOffsetX);
            make.height.offset(self->labelHeight);
            make.top.equalTo(self.mas_top);
        }];
        // daysUnitLabel
        selfViewOffsetX = labelTimeUnitSize.width + selfViewOffsetX;
        // dayHourSpacing
        selfViewOffsetX = self.dayHourSpacing + selfViewOffsetX;
        self.daysUnitLabel.hidden = YES;
        self.daysView.hidden = YES;
    }
    
    //hour
    tempTime = [NSString stringWithFormat:@"%@",hoursStr];
    hoursStr = [NSString stringWithFormat:@"%.2d",hours%24];
    if ((((hours%24)/10)!=(([tempTime intValue]%24)/10)) && self.isFlipFromTop) {
        
        self.hoursLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(((hours%24)/10)+1)%24];
        self.hoursLabel_0.downLabel.text = [NSString stringWithFormat:@"%ld",(long)(hours%24)/10];
        [self.hoursLabel_0  flipAnimationWithDelay:1];
    }else
    {
        self.hoursLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(hours%24)/10];
    }
    
    if ((((hours%24)%10)!=(([tempTime intValue]%24)%10)) && self.isFlipFromTop) {
        self.hoursLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(((hours%24)%10)+1)%10];
        self.hoursLabel_1.downLabel.text = [NSString stringWithFormat:@"%ld",(long)(hours%24)%10];
        [self.hoursLabel_1  flipAnimationWithDelay:1];
    }else
    {
        self.hoursLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(hours%24)%10];
    }
    
    //min
    tempTime = [NSString stringWithFormat:@"%@",minutesStr];
    minutesStr = [NSString stringWithFormat:@"%.2ld",(long)minutes];
    if (((minutes/10)!=([tempTime intValue]/10)) && self.isFlipFromTop) {
        
        self.minutesLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((minutes/10)+1)%6];
        self.minutesLabel_0.downLabel.text = [NSString stringWithFormat:@"%ld",(long)minutes/10];
        [self.minutesLabel_0  flipAnimationWithDelay:1];
    }else
    {
        self.minutesLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(minutes/10)];
    }
    
    if (((minutes%10)!=([tempTime intValue]%10)) && self.isFlipFromTop) {
        self.minutesLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((minutes%10)+1)%10];
        self.minutesLabel_1.downLabel.text = [NSString stringWithFormat:@"%ld",(long)minutes%10];
        [self.minutesLabel_1  flipAnimationWithDelay:1];
    }else
    {
        self.minutesLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(minutes%10)];
    }
    
    //sec
    tempTime = [NSString stringWithFormat:@"%@",secondsStr];
    secondsStr = [NSString stringWithFormat:@"%.2ld",(long)seconds];
    if (((seconds/10)!=([tempTime intValue]/10)) && self.isFlipFromTop) {
        
        self.secondsLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((seconds/10)+1)%6];
        self.secondsLabel_0.downLabel.text = [NSString stringWithFormat:@"%ld",(long)seconds/10];
        [self.secondsLabel_0  flipAnimationWithDelay:1];
    }else
    {
        self.secondsLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(seconds/10)];
    }
    
    if (((seconds%10)!=([tempTime intValue]%10)) && self.isFlipFromTop) {
        self.secondsLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((seconds%10)+1)%10];
        self.secondsLabel_1.downLabel.text = [NSString stringWithFormat:@"%ld",(long)seconds%10];
        [self.secondsLabel_1  flipAnimationWithDelay:1];
    }else
    {
        self.secondsLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(seconds%10)];
    }
    
    //milliSecond
    tempTime = [NSString stringWithFormat:@"%@",milliSecondStr];
    milliSecondStr = [NSString stringWithFormat:@"%.2ld",(long)millisecond];
    if (((millisecond/10)!=([tempTime intValue]/10)) && self.isFlipFromTop) {
        
        self.milliSecondLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((millisecond/10)+1)%10];
        self.milliSecondLabel_0.downLabel.text = [NSString stringWithFormat:@"%ld",(long)millisecond/10];
        [self.milliSecondLabel_0  flipAnimationWithDelay:0.2];
    }else
    {
        self.milliSecondLabel_0.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(millisecond/10)];
    }
    
    if (((minutes%10)!=([tempTime intValue]%10)) && self.isFlipFromTop) {
        self.milliSecondLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)((millisecond%10)+1)%10];
        self.milliSecondLabel_1.downLabel.text = [NSString stringWithFormat:@"%ld",(long)millisecond%10];
        [self.milliSecondLabel_1  flipAnimationWithDelay:0.4];
    }else
    {
        self.milliSecondLabel_1.upLabel.text = [NSString stringWithFormat:@"%ld",(long)(millisecond%10)];
    }
    
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backView.mas_centerX).offset(-self->selfViewOffsetX/2);
        make.centerY.equalTo(self.backView.mas_centerY);
        make.width.offset(self->sumWidth);
        make.height.offset(self->labelHeight);
    }];
}

-(void)setTimeLabelSizeWithFont:(UIFont*)font{
    test.text=@"4";
    test.font = font;
    labelTimeSize = [self labelSize:test];
    
}
-(void)setUnitLabelSizeWithFont:(UIFont*)font unitStr:(NSString*)unitStr{
    test.font = font;
    test.text=unitStr;
    labelTimeUnitSize = [self labelSize:test];
}

- (CGSize) labelSize:(UILabel*)timeLableSize
{
    return [timeLableSize sizeThatFits:CGSizeMake(MAXFLOAT, labelHeight)];
}

-(void)setLabelIsTop:(CustomUILabel*)label {
    [label setVerticalAlignment:VerticalAlignmentTop];
}

-(void)setLabelIsBottom:(CustomUILabel*)label {
    [label setVerticalAlignment:VerticalAlignmentBottom];
}

- (void)timerDidFinishCounting:(NSString*)resMag
{
    NSLog(@"timerDidFinishCounting");
    [self uiSetHidden:YES];
    self.timeLabel.text = resMag;
    CGSize temp = [self labelSize:self.timeLabel];
    [self mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backView.mas_centerX);
        make.centerY.equalTo(self.backView.mas_centerY);
        make.width.offset(temp.width);
        make.height.offset(self->labelHeight);
    }];
}

-(void)uiSetHidden:(BOOL)isHidden{
    [self.daysLabel_0 setHidden:isHidden];
    [self.daysLabel_1 setHidden:isHidden];
    [self.daysLabel_2 setHidden:isHidden];
    [self.daysLabel_3 setHidden:isHidden];
    [self.daysUnitLabel setHidden:isHidden];
    [self.hoursLabel_0 setHidden:isHidden];
    [self.hoursLabel_1 setHidden:isHidden];
    [self.hoursUnitLabel setHidden:isHidden];
    [self.minutesLabel_0 setHidden:isHidden];
    [self.minutesLabel_1 setHidden:isHidden];
    [self.minutesUnitLabel setHidden:isHidden];
    [self.secondsLabel_0 setHidden:isHidden];
    [self.secondsLabel_1 setHidden:isHidden];
    [self.secondsUnitLabel setHidden:isHidden];
    [self.milliSecondLabel_0 setHidden:isHidden];
    [self.milliSecondLabel_1 setHidden:isHidden];
    [self.timeLabel setHidden:!isHidden];
    
    [self.daysView setHidden:isHidden];
    [self.hoursView setHidden:isHidden];
    [self.minutesView setHidden:isHidden];
    [self.secondsView setHidden:isHidden];
    [self.milliSecondView setHidden:isHidden];
}

- (void)closeTimer
{
    [_countDownNew closeTimer];
    switch (self.countDownTimeType) {
        case CountDownTimeType_Normal:
            self.isFlipFromTop = NO;
            break;
        case CountDownTimeType_FlipNoRepeat:
            self.isFlipFromTop = YES;
            break;
        default:
            break;
    }
}

-(void)removeLabelSubView
{
    for (UILabel *subview in self.subviews) {
        for (TXScrollLabelView *labelsubview in subview.subviews) {
            [labelsubview endScrolling];
            [labelsubview removeFromSuperview];
        }
    }
}

- (void)startTimer{
    NSDate *timerDate = [[NSDate alloc]initWithTimeIntervalSinceNow:600000];
    
    self.countDownNew = [[Timer alloc]init];
    self.countDownNew.delegate = self;
    [self.countDownNew setDate:timerDate];
    [self.countDownNew updateTimer];
}
@end



