//
//  Created by Alberto Pasca on 27/02/14.
//  Copyright (c) 2014 albertopasca.it. All rights reserved.
//

#import "APRoundedButton.h"
#import <QuartzCore/QuartzCore.h>

@interface APRoundedButton()
{
    UIRectCorner _corners;
}
@end

@implementation APRoundedButton

- (void)setTopLeft:(BOOL)topLeft {
    _topLeft = topLeft;
    _corners |= UIRectCornerTopLeft;
}

- (void)setTopRigth:(BOOL)topRigth {
    _topRigth = topRigth;
    _corners |= UIRectCornerTopRight;
}

- (void)setBottomLeft:(BOOL)bottomLeft {
    _bottomLeft = bottomLeft;
    _corners |= UIRectCornerBottomLeft;
}

- (void)setBottomRigth:(BOOL)bottomRigth {
    _bottomRigth = bottomRigth;
    _corners |= UIRectCornerBottomRight;
}

- (void)setFillColor:(UIColor *)fillColor {
    _fillColor = fillColor;
    self.backgroundColor = fillColor;
}

- (void)setCornerRadius:(int)cornerRadius {
    _cornerRadius = cornerRadius;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    UIBezierPath *maskPath =
    [UIBezierPath bezierPathWithRoundedRect:self.bounds
                          byRoundingCorners:_corners
                                cornerRadii:CGSizeMake(_cornerRadius, _cornerRadius+10)];

    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame         = self.bounds;
    maskLayer.path          = maskPath.CGPath;
    self.layer.mask         = maskLayer;
}

@end


