//
//  CountUpView.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, CountUpViewType) {
    CountUpViewType_Normal              = 1,
    CountUpViewType_AddComma               ,
};
@interface CountUpView : UIView
@property (nonatomic,strong) UILabel *countUpLab;
@property (nonatomic,strong) NSString *countUpStr;
@property (nonatomic,assign) CountUpViewType countUpViewType;

- (void)setUI;
- (void)closeTimer;
- (void)startTimer;

@end
