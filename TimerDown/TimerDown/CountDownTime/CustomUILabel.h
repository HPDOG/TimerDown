//
//  CustomUILabel.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum
{
    VerticalAlignmentTop = 0, // default
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;
@interface CustomUILabel : UILabel
{
@private
    VerticalAlignment _verticalAlignment;
}
@property (nonatomic) VerticalAlignment verticalAlignment;
@end

NS_ASSUME_NONNULL_END
