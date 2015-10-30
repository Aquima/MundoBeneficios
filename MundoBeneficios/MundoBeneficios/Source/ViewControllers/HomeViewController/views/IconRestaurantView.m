//
//  IconRestaurantView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconRestaurantView.h"

@implementation IconRestaurantView


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
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(4.05, 14.75, 62.1, 41.2)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(57.34, 51.83)];
        [bezierPath addCurveToPoint: CGPointMake(54.4, 51.82) controlPoint1: CGPointMake(56.36, 51.83) controlPoint2: CGPointMake(55.38, 51.82)];
        [bezierPath addCurveToPoint: CGPointMake(9.87, 51.81) controlPoint1: CGPointMake(39.56, 51.82) controlPoint2: CGPointMake(24.71, 51.83)];
        [bezierPath addCurveToPoint: CGPointMake(8.62, 51.5) controlPoint1: CGPointMake(9.44, 51.81) controlPoint2: CGPointMake(8.92, 51.75)];
        [bezierPath addCurveToPoint: CGPointMake(8.14, 50.35) controlPoint1: CGPointMake(8.33, 51.26) controlPoint2: CGPointMake(8.13, 50.74)];
        [bezierPath addCurveToPoint: CGPointMake(16.21, 32.15) controlPoint1: CGPointMake(8.23, 43.13) controlPoint2: CGPointMake(11, 37.08)];
        [bezierPath addCurveToPoint: CGPointMake(29.69, 25.27) controlPoint1: CGPointMake(20.01, 28.54) controlPoint2: CGPointMake(24.55, 26.29)];
        [bezierPath addCurveToPoint: CGPointMake(29.9, 25.21) controlPoint1: CGPointMake(29.8, 25.25) controlPoint2: CGPointMake(29.9, 25.21)];
        [bezierPath addLineToPoint: CGPointMake(29.9, 25.21)];
        [bezierPath addCurveToPoint: CGPointMake(28.68, 22.28) controlPoint1: CGPointMake(29.48, 24.23) controlPoint2: CGPointMake(28.9, 23.29)];
        [bezierPath addCurveToPoint: CGPointMake(33.72, 14.86) controlPoint1: CGPointMake(27.91, 18.87) controlPoint2: CGPointMake(30.18, 15.61)];
        [bezierPath addCurveToPoint: CGPointMake(34.1, 14.73) controlPoint1: CGPointMake(33.85, 14.83) controlPoint2: CGPointMake(33.98, 14.77)];
        [bezierPath addCurveToPoint: CGPointMake(36.05, 14.73) controlPoint1: CGPointMake(34.75, 14.73) controlPoint2: CGPointMake(35.4, 14.73)];
        [bezierPath addCurveToPoint: CGPointMake(37.08, 15.03) controlPoint1: CGPointMake(36.39, 14.83) controlPoint2: CGPointMake(36.74, 14.92)];
        [bezierPath addCurveToPoint: CGPointMake(40.26, 24.89) controlPoint1: CGPointMake(41.41, 16.38) controlPoint2: CGPointMake(42.98, 21.25)];
        [bezierPath addLineToPoint: CGPointMake(40.1, 25.12)];
        [bezierPath addCurveToPoint: CGPointMake(44.13, 26.27) controlPoint1: CGPointMake(41.47, 25.5) controlPoint2: CGPointMake(42.83, 25.79)];
        [bezierPath addCurveToPoint: CGPointMake(61.44, 45.24) controlPoint1: CGPointMake(53.18, 29.59) controlPoint2: CGPointMake(59.14, 35.77)];
        [bezierPath addCurveToPoint: CGPointMake(62.02, 50.28) controlPoint1: CGPointMake(61.83, 46.87) controlPoint2: CGPointMake(61.88, 48.6)];
        [bezierPath addCurveToPoint: CGPointMake(60.53, 51.82) controlPoint1: CGPointMake(62.1, 51.32) controlPoint2: CGPointMake(61.58, 51.81)];
        [bezierPath addCurveToPoint: CGPointMake(57.34, 51.83) controlPoint1: CGPointMake(59.47, 51.82) controlPoint2: CGPointMake(58.41, 51.83)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(35.44, 27.28)];
        [bezierPath addCurveToPoint: CGPointMake(29.49, 28) controlPoint1: CGPointMake(33.49, 27.28) controlPoint2: CGPointMake(31.5, 27.52)];
        [bezierPath addCurveToPoint: CGPointMake(11.22, 45.77) controlPoint1: CGPointMake(19.98, 30.3) controlPoint2: CGPointMake(13.71, 36.16)];
        [bezierPath addCurveToPoint: CGPointMake(10.68, 49.19) controlPoint1: CGPointMake(10.94, 46.87) controlPoint2: CGPointMake(10.86, 48.02)];
        [bezierPath addCurveToPoint: CGPointMake(59.39, 49.19) controlPoint1: CGPointMake(27, 49.19) controlPoint2: CGPointMake(43.15, 49.19)];
        [bezierPath addCurveToPoint: CGPointMake(59.33, 48.1) controlPoint1: CGPointMake(59.37, 48.78) controlPoint2: CGPointMake(59.37, 48.44)];
        [bezierPath addCurveToPoint: CGPointMake(48.98, 31.52) controlPoint1: CGPointMake(58.41, 40.99) controlPoint2: CGPointMake(54.91, 35.46)];
        [bezierPath addCurveToPoint: CGPointMake(35.44, 27.28) controlPoint1: CGPointMake(44.75, 28.71) controlPoint2: CGPointMake(40.2, 27.28)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(35.05, 17.31)];
        [bezierPath addCurveToPoint: CGPointMake(31.1, 21.06) controlPoint1: CGPointMake(32.89, 17.31) controlPoint2: CGPointMake(31.07, 19.03)];
        [bezierPath addCurveToPoint: CGPointMake(35.05, 24.71) controlPoint1: CGPointMake(31.13, 23.11) controlPoint2: CGPointMake(32.87, 24.71)];
        [bezierPath addCurveToPoint: CGPointMake(35.08, 24.71) controlPoint1: CGPointMake(35.06, 24.71) controlPoint2: CGPointMake(35.07, 24.71)];
        [bezierPath addCurveToPoint: CGPointMake(39.05, 21) controlPoint1: CGPointMake(37.31, 24.7) controlPoint2: CGPointMake(39.08, 23.05)];
        [bezierPath addCurveToPoint: CGPointMake(35.07, 17.31) controlPoint1: CGPointMake(39.01, 18.96) controlPoint2: CGPointMake(37.24, 17.31)];
        [bezierPath addCurveToPoint: CGPointMake(35.05, 17.31) controlPoint1: CGPointMake(35.07, 17.31) controlPoint2: CGPointMake(35.06, 17.31)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(64.5, 56)];
        [bezier2Path addLineToPoint: CGPointMake(64.5, 56)];
        [bezier2Path addCurveToPoint: CGPointMake(33.72, 55.99) controlPoint1: CGPointMake(54.24, 55.99) controlPoint2: CGPointMake(43.98, 55.99)];
        [bezier2Path addCurveToPoint: CGPointMake(5.71, 56) controlPoint1: CGPointMake(24.39, 55.99) controlPoint2: CGPointMake(15.05, 55.99)];
        [bezier2Path addCurveToPoint: CGPointMake(5.71, 56) controlPoint1: CGPointMake(5.71, 56) controlPoint2: CGPointMake(5.71, 56)];
        [bezier2Path addCurveToPoint: CGPointMake(4, 55.03) controlPoint1: CGPointMake(4.92, 56) controlPoint2: CGPointMake(4.33, 55.77)];
        [bezier2Path addCurveToPoint: CGPointMake(4, 54.3) controlPoint1: CGPointMake(4, 54.79) controlPoint2: CGPointMake(4, 54.54)];
        [bezier2Path addCurveToPoint: CGPointMake(5.74, 53.39) controlPoint1: CGPointMake(4.36, 53.58) controlPoint2: CGPointMake(4.96, 53.39)];
        [bezier2Path addCurveToPoint: CGPointMake(5.74, 53.39) controlPoint1: CGPointMake(5.74, 53.39) controlPoint2: CGPointMake(5.74, 53.39)];
        [bezier2Path addCurveToPoint: CGPointMake(34.44, 53.39) controlPoint1: CGPointMake(15.31, 53.39) controlPoint2: CGPointMake(24.88, 53.39)];
        [bezier2Path addCurveToPoint: CGPointMake(64.53, 53.39) controlPoint1: CGPointMake(44.47, 53.39) controlPoint2: CGPointMake(54.5, 53.39)];
        [bezier2Path addCurveToPoint: CGPointMake(64.53, 53.39) controlPoint1: CGPointMake(64.53, 53.39) controlPoint2: CGPointMake(64.53, 53.39)];
        [bezier2Path addCurveToPoint: CGPointMake(66.15, 54.3) controlPoint1: CGPointMake(65.28, 53.39) controlPoint2: CGPointMake(65.81, 53.65)];
        [bezier2Path addCurveToPoint: CGPointMake(66.15, 55.03) controlPoint1: CGPointMake(66.15, 54.54) controlPoint2: CGPointMake(66.15, 54.79)];
        [bezier2Path addCurveToPoint: CGPointMake(64.5, 56) controlPoint1: CGPointMake(65.83, 55.74) controlPoint2: CGPointMake(65.28, 56)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
