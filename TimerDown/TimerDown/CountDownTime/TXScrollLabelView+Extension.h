//
//  TXScrollLabelView+Extension.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "TXScrollLabelView.h"

NS_ASSUME_NONNULL_BEGIN
@interface TXScrollLabel : UILabel

@end

@interface TXScrollLabelView ()

@property (weak, nonatomic) TXScrollLabel *upLabel;

@property (weak, nonatomic) TXScrollLabel *downLabel;
- (void)flipAnimationWithDelay:(NSTimeInterval)delay;
@end

NS_ASSUME_NONNULL_END
