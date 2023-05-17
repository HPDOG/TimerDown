//
//  UIView+Extension.h
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

- (BOOL)intersectsWithAnotherView:(UIView *)anotherView;
-(void)setCornerRadius:(float)radius;
-(void)setBorderWithWidth:(float)Width color:(UIColor*)color;
-(void)setShadowWithRadius:(float)radius opacity:(float)opacity offset:(CGSize)offset;
@end
