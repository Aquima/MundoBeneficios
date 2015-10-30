//
//  IconPhoneView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconPhoneView.h"

@implementation IconPhoneView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(15.02, 13.4, 24.95, 25.6)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(33.19, 39)];
        [bezierPath addCurveToPoint: CGPointMake(25.59, 35.92) controlPoint1: CGPointMake(31.54, 39) controlPoint2: CGPointMake(28.89, 38.42)];
        [bezierPath addCurveToPoint: CGPointMake(18.51, 29) controlPoint1: CGPointMake(22.9, 33.89) controlPoint2: CGPointMake(20.41, 31.73)];
        [bezierPath addCurveToPoint: CGPointMake(15, 18.73) controlPoint1: CGPointMake(16.61, 26.26) controlPoint2: CGPointMake(15.32, 22.94)];
        [bezierPath addCurveToPoint: CGPointMake(15.27, 17.97) controlPoint1: CGPointMake(14.98, 18.46) controlPoint2: CGPointMake(15.08, 18.18)];
        [bezierPath addCurveToPoint: CGPointMake(19.71, 13.63) controlPoint1: CGPointMake(17.83, 15.24) controlPoint2: CGPointMake(19.68, 13.65)];
        [bezierPath addCurveToPoint: CGPointMake(20.36, 13.39) controlPoint1: CGPointMake(19.89, 13.47) controlPoint2: CGPointMake(20.12, 13.39)];
        [bezierPath addCurveToPoint: CGPointMake(20.45, 13.39) controlPoint1: CGPointMake(20.39, 13.39) controlPoint2: CGPointMake(20.42, 13.39)];
        [bezierPath addCurveToPoint: CGPointMake(21.14, 13.76) controlPoint1: CGPointMake(20.72, 13.42) controlPoint2: CGPointMake(20.97, 13.55)];
        [bezierPath addLineToPoint: CGPointMake(25.67, 19.43)];
        [bezierPath addCurveToPoint: CGPointMake(25.67, 20.67) controlPoint1: CGPointMake(25.96, 19.79) controlPoint2: CGPointMake(25.96, 20.3)];
        [bezierPath addLineToPoint: CGPointMake(23.22, 23.8)];
        [bezierPath addCurveToPoint: CGPointMake(23.45, 24.17) controlPoint1: CGPointMake(23.28, 23.91) controlPoint2: CGPointMake(23.36, 24.03)];
        [bezierPath addCurveToPoint: CGPointMake(25.03, 26.38) controlPoint1: CGPointMake(23.81, 24.75) controlPoint2: CGPointMake(24.36, 25.54)];
        [bezierPath addCurveToPoint: CGPointMake(29.77, 30.37) controlPoint1: CGPointMake(26.25, 27.9) controlPoint2: CGPointMake(27.94, 29.55)];
        [bezierPath addCurveToPoint: CGPointMake(32.46, 27.62) controlPoint1: CGPointMake(31.49, 28.59) controlPoint2: CGPointMake(32.45, 27.63)];
        [bezierPath addCurveToPoint: CGPointMake(33.16, 27.33) controlPoint1: CGPointMake(32.65, 27.43) controlPoint2: CGPointMake(32.91, 27.33)];
        [bezierPath addCurveToPoint: CGPointMake(33.82, 27.58) controlPoint1: CGPointMake(33.4, 27.33) controlPoint2: CGPointMake(33.63, 27.41)];
        [bezierPath addLineToPoint: CGPointMake(39.66, 32.72)];
        [bezierPath addLineToPoint: CGPointMake(39, 33.47)];
        [bezierPath addLineToPoint: CGPointMake(39.66, 32.72)];
        [bezierPath addCurveToPoint: CGPointMake(40, 33.44) controlPoint1: CGPointMake(39.87, 32.9) controlPoint2: CGPointMake(39.99, 33.16)];
        [bezierPath addCurveToPoint: CGPointMake(39.71, 34.18) controlPoint1: CGPointMake(40.01, 33.71) controlPoint2: CGPointMake(39.9, 33.98)];
        [bezierPath addLineToPoint: CGPointMake(35.39, 38.49)];
        [bezierPath addCurveToPoint: CGPointMake(35.08, 38.7) controlPoint1: CGPointMake(35.3, 38.58) controlPoint2: CGPointMake(35.19, 38.65)];
        [bezierPath addCurveToPoint: CGPointMake(33.21, 39) controlPoint1: CGPointMake(34.98, 38.74) controlPoint2: CGPointMake(34.33, 39)];
        [bezierPath addLineToPoint: CGPointMake(33.21, 39)];
        [bezierPath addCurveToPoint: CGPointMake(33.19, 39) controlPoint1: CGPointMake(33.2, 39) controlPoint2: CGPointMake(33.2, 39)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(17.03, 19.02)];
        [bezierPath addCurveToPoint: CGPointMake(20.15, 27.86) controlPoint1: CGPointMake(17.38, 22.69) controlPoint2: CGPointMake(18.51, 25.48)];
        [bezierPath addCurveToPoint: CGPointMake(26.8, 34.33) controlPoint1: CGPointMake(21.87, 30.32) controlPoint2: CGPointMake(24.17, 32.35)];
        [bezierPath addCurveToPoint: CGPointMake(33.21, 37) controlPoint1: CGPointMake(29.83, 36.61) controlPoint2: CGPointMake(32.01, 37)];
        [bezierPath addCurveToPoint: CGPointMake(34.15, 36.9) controlPoint1: CGPointMake(33.66, 37) controlPoint2: CGPointMake(33.98, 36.94)];
        [bezierPath addLineToPoint: CGPointMake(37.54, 33.52)];
        [bezierPath addLineToPoint: CGPointMake(33.21, 29.7)];
        [bezierPath addCurveToPoint: CGPointMake(33.06, 29.86) controlPoint1: CGPointMake(33.16, 29.75) controlPoint2: CGPointMake(33.11, 29.8)];
        [bezierPath addCurveToPoint: CGPointMake(30.75, 32.24) controlPoint1: CGPointMake(32.53, 30.4) controlPoint2: CGPointMake(31.75, 31.2)];
        [bezierPath addCurveToPoint: CGPointMake(30.03, 32.55) controlPoint1: CGPointMake(30.56, 32.44) controlPoint2: CGPointMake(30.3, 32.55)];
        [bezierPath addCurveToPoint: CGPointMake(29.7, 32.5) controlPoint1: CGPointMake(29.91, 32.55) controlPoint2: CGPointMake(29.8, 32.53)];
        [bezierPath addCurveToPoint: CGPointMake(23.48, 27.64) controlPoint1: CGPointMake(27.05, 31.55) controlPoint2: CGPointMake(24.96, 29.46)];
        [bezierPath addCurveToPoint: CGPointMake(21.13, 24.18) controlPoint1: CGPointMake(22, 25.81) controlPoint2: CGPointMake(21.15, 24.22)];
        [bezierPath addCurveToPoint: CGPointMake(21.23, 23.09) controlPoint1: CGPointMake(20.94, 23.83) controlPoint2: CGPointMake(20.98, 23.41)];
        [bezierPath addLineToPoint: CGPointMake(23.61, 20.06)];
        [bezierPath addLineToPoint: CGPointMake(20.24, 15.84)];
        [bezierPath addCurveToPoint: CGPointMake(19.81, 16.24) controlPoint1: CGPointMake(20.11, 15.96) controlPoint2: CGPointMake(19.97, 16.09)];
        [bezierPath addCurveToPoint: CGPointMake(17.03, 19.02) controlPoint1: CGPointMake(19.11, 16.9) controlPoint2: CGPointMake(18.15, 17.84)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
