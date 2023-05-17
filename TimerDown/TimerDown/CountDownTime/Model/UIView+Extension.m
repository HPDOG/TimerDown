//
//  UIView+Extension.m
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return  self.frame.size.height;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (BOOL)intersectsWithAnotherView:(UIView *)anotherView
{
    if (anotherView == nil) anotherView = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:nil];
    CGRect anotherRect = [anotherView convertRect:anotherView.bounds toView:nil];
    return CGRectIntersectsRect(selfRect, anotherRect);
}

//畫圓角
-(void)setCornerRadius:(float)radius {
    self.layer.cornerRadius = radius * kViewWidthScale;
    if (self.layer.shadowOpacity == 0) {
        self.layer.masksToBounds = YES;
    } else {
        self.layer.masksToBounds = NO;
    }
}

//畫邊線
-(void)setBorderWithWidth:(float)Width color:(UIColor*)color{
    self.layer.borderWidth = Width * kViewWidthScale;
    self.layer.borderColor = color.CGColor;
}

//畫陰影
-(void)setShadowWithRadius:(float)radius opacity:(float)opacity offset:(CGSize)offset{
    self.layer.shadowOffset = offset;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius * kViewWidthScale;
    self.layer.masksToBounds = NO;
}
@end
