//
//  SpinnerView.m
//  SpinnerSample
//
//  Created by Allen Hsu on 10/15/13.
//  Copyright (c) 2013 Allen Hsu. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "SpinnerView.h"

@implementation SpinnerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setRotation:(CGFloat)rotation
{
    self.hidden = rotation == 0.0f;
    self.transform = CGAffineTransformMakeRotation(rotation);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 17.0, 0.0);
    CGPathAddArc(path, NULL, 17.0, 4.0, 4.0, - M_PI_2, M_PI_2, 0);
    CGPathAddArc(path, NULL, 17.0, 17.0, 9.0, - M_PI_2, - M_PI_2 - rotation, 1);
    CGPathAddArc(path, NULL, 17.0, 17.0, 17.0, - M_PI_2 - rotation, - M_PI_2, 0);
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.layer.bounds;
    maskLayer.fillColor = [[UIColor blackColor] CGColor];
    maskLayer.path = path;
    self.layer.mask = maskLayer;
}

@end
