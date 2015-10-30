//
//  IconTechnologyView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconTechnologyView.h"

@implementation IconTechnologyView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    
    //// Group 2
    {
        //// Group 3
        {
            CGContextSaveGState(context);
            CGContextBeginTransparencyLayer(context, NULL);
            
            //// Clip Clip
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(4.05, 14.02, 61.2, 43.95)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(58.99, 58)];
            [bezierPath addCurveToPoint: CGPointMake(58.92, 58) controlPoint1: CGPointMake(58.97, 58) controlPoint2: CGPointMake(58.94, 58)];
            [bezierPath addCurveToPoint: CGPointMake(34.51, 57.94) controlPoint1: CGPointMake(50.78, 57.96) controlPoint2: CGPointMake(42.64, 57.94)];
            [bezierPath addCurveToPoint: CGPointMake(10.1, 58) controlPoint1: CGPointMake(26.37, 57.94) controlPoint2: CGPointMake(18.23, 57.96)];
            [bezierPath addCurveToPoint: CGPointMake(10.02, 58) controlPoint1: CGPointMake(10.07, 58) controlPoint2: CGPointMake(10.05, 58)];
            [bezierPath addCurveToPoint: CGPointMake(4, 53.92) controlPoint1: CGPointMake(6.88, 58) controlPoint2: CGPointMake(5.11, 56.99)];
            [bezierPath addCurveToPoint: CGPointMake(4, 50.77) controlPoint1: CGPointMake(4, 52.95) controlPoint2: CGPointMake(4, 50.77)];
            [bezierPath addLineToPoint: CGPointMake(8.67, 50.7)];
            [bezierPath addCurveToPoint: CGPointMake(8.67, 49.14) controlPoint1: CGPointMake(8.67, 50.7) controlPoint2: CGPointMake(8.67, 49.62)];
            [bezierPath addCurveToPoint: CGPointMake(8.67, 19.98) controlPoint1: CGPointMake(8.67, 39.58) controlPoint2: CGPointMake(8.67, 29.54)];
            [bezierPath addCurveToPoint: CGPointMake(14.66, 14.04) controlPoint1: CGPointMake(8.68, 16.06) controlPoint2: CGPointMake(10.71, 14.04)];
            [bezierPath addCurveToPoint: CGPointMake(34.51, 14.04) controlPoint1: CGPointMake(21.28, 14.04) controlPoint2: CGPointMake(27.89, 14.04)];
            [bezierPath addCurveToPoint: CGPointMake(54.36, 14.04) controlPoint1: CGPointMake(41.12, 14.04) controlPoint2: CGPointMake(47.74, 14.04)];
            [bezierPath addCurveToPoint: CGPointMake(60.34, 19.98) controlPoint1: CGPointMake(58.31, 14.04) controlPoint2: CGPointMake(60.34, 16.06)];
            [bezierPath addCurveToPoint: CGPointMake(60.34, 49.14) controlPoint1: CGPointMake(60.34, 29.54) controlPoint2: CGPointMake(60.34, 39.58)];
            [bezierPath addCurveToPoint: CGPointMake(60.34, 50.7) controlPoint1: CGPointMake(60.34, 49.62) controlPoint2: CGPointMake(60.34, 50.7)];
            [bezierPath addLineToPoint: CGPointMake(65.26, 50.77)];
            [bezierPath addCurveToPoint: CGPointMake(65.02, 53.92) controlPoint1: CGPointMake(65.26, 50.77) controlPoint2: CGPointMake(65.02, 52.95)];
            [bezierPath addCurveToPoint: CGPointMake(58.99, 58) controlPoint1: CGPointMake(63.9, 56.99) controlPoint2: CGPointMake(62.14, 58)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(59.77, 56.34)];
            [bezierPath addCurveToPoint: CGPointMake(60.19, 56.34) controlPoint1: CGPointMake(59.91, 56.34) controlPoint2: CGPointMake(60.05, 56.34)];
            [bezierPath addCurveToPoint: CGPointMake(60.62, 56.32) controlPoint1: CGPointMake(60.33, 56.34) controlPoint2: CGPointMake(60.48, 56.34)];
            [bezierPath addCurveToPoint: CGPointMake(63.25, 52.37) controlPoint1: CGPointMake(61.93, 56.16) controlPoint2: CGPointMake(63.22, 53.79)];
            [bezierPath addCurveToPoint: CGPointMake(5.7, 52.37) controlPoint1: CGPointMake(44.42, 52.37) controlPoint2: CGPointMake(24.61, 52.37)];
            [bezierPath addCurveToPoint: CGPointMake(5.76, 53.61) controlPoint1: CGPointMake(5.72, 52.67) controlPoint2: CGPointMake(5.69, 53.4)];
            [bezierPath addCurveToPoint: CGPointMake(9.22, 56.34) controlPoint1: CGPointMake(6.14, 54.8) controlPoint2: CGPointMake(7.61, 56.34)];
            [bezierPath addCurveToPoint: CGPointMake(34.5, 56.34) controlPoint1: CGPointMake(17.65, 56.34) controlPoint2: CGPointMake(26.07, 56.34)];
            [bezierPath addCurveToPoint: CGPointMake(59.77, 56.34) controlPoint1: CGPointMake(42.92, 56.34) controlPoint2: CGPointMake(51.35, 56.34)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(32.14, 15.66)];
            [bezierPath addCurveToPoint: CGPointMake(14.07, 15.66) controlPoint1: CGPointMake(26.08, 15.66) controlPoint2: CGPointMake(20.03, 15.66)];
            [bezierPath addCurveToPoint: CGPointMake(10.3, 19.9) controlPoint1: CGPointMake(11.66, 15.66) controlPoint2: CGPointMake(10.3, 17.5)];
            [bezierPath addCurveToPoint: CGPointMake(10.3, 49.31) controlPoint1: CGPointMake(10.29, 29.54) controlPoint2: CGPointMake(10.3, 39.67)];
            [bezierPath addCurveToPoint: CGPointMake(10.3, 50.59) controlPoint1: CGPointMake(10.3, 49.71) controlPoint2: CGPointMake(10.3, 50.11)];
            [bezierPath addCurveToPoint: CGPointMake(58.72, 50.59) controlPoint1: CGPointMake(25.81, 50.59) controlPoint2: CGPointMake(43.17, 50.59)];
            [bezierPath addCurveToPoint: CGPointMake(58.72, 49.35) controlPoint1: CGPointMake(58.72, 50.14) controlPoint2: CGPointMake(58.72, 49.74)];
            [bezierPath addCurveToPoint: CGPointMake(58.72, 19.94) controlPoint1: CGPointMake(58.72, 39.71) controlPoint2: CGPointMake(58.72, 29.58)];
            [bezierPath addCurveToPoint: CGPointMake(54.5, 15.66) controlPoint1: CGPointMake(58.72, 17.52) controlPoint2: CGPointMake(56.88, 15.67)];
            [bezierPath addCurveToPoint: CGPointMake(32.14, 15.66) controlPoint1: CGPointMake(47.14, 15.66) controlPoint2: CGPointMake(39.63, 15.66)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(43.7, 47.62)];
        [bezier2Path addCurveToPoint: CGPointMake(34.38, 47.62) controlPoint1: CGPointMake(40.6, 47.62) controlPoint2: CGPointMake(37.49, 47.62)];
        [bezier2Path addCurveToPoint: CGPointMake(25.18, 47.62) controlPoint1: CGPointMake(31.31, 47.62) controlPoint2: CGPointMake(28.25, 47.62)];
        [bezier2Path addCurveToPoint: CGPointMake(15.87, 47.62) controlPoint1: CGPointMake(22.07, 47.62) controlPoint2: CGPointMake(18.97, 47.62)];
        [bezier2Path addCurveToPoint: CGPointMake(13.86, 45.67) controlPoint1: CGPointMake(14.2, 47.62) controlPoint2: CGPointMake(13.86, 47.31)];
        [bezier2Path addCurveToPoint: CGPointMake(13.86, 21.1) controlPoint1: CGPointMake(13.85, 37.48) controlPoint2: CGPointMake(13.85, 29.29)];
        [bezier2Path addCurveToPoint: CGPointMake(15.7, 19.23) controlPoint1: CGPointMake(13.86, 19.55) controlPoint2: CGPointMake(14.17, 19.23)];
        [bezier2Path addCurveToPoint: CGPointMake(34.51, 19.22) controlPoint1: CGPointMake(21.97, 19.23) controlPoint2: CGPointMake(28.24, 19.22)];
        [bezier2Path addCurveToPoint: CGPointMake(53.33, 19.23) controlPoint1: CGPointMake(40.78, 19.22) controlPoint2: CGPointMake(47.06, 19.23)];
        [bezier2Path addCurveToPoint: CGPointMake(55.16, 21.11) controlPoint1: CGPointMake(54.85, 19.23) controlPoint2: CGPointMake(55.16, 19.55)];
        [bezier2Path addCurveToPoint: CGPointMake(55.16, 45.68) controlPoint1: CGPointMake(55.16, 29.3) controlPoint2: CGPointMake(55.16, 37.49)];
        [bezier2Path addCurveToPoint: CGPointMake(53.14, 47.62) controlPoint1: CGPointMake(55.16, 47.31) controlPoint2: CGPointMake(54.82, 47.62)];
        [bezier2Path addCurveToPoint: CGPointMake(43.7, 47.62) controlPoint1: CGPointMake(49.99, 47.62) controlPoint2: CGPointMake(46.85, 47.62)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(16.69, 20.8)];
        [bezier2Path addCurveToPoint: CGPointMake(15.43, 22.09) controlPoint1: CGPointMake(15.69, 20.8) controlPoint2: CGPointMake(15.43, 21.1)];
        [bezier2Path addCurveToPoint: CGPointMake(15.46, 44.83) controlPoint1: CGPointMake(15.47, 29.03) controlPoint2: CGPointMake(15.45, 37.9)];
        [bezier2Path addCurveToPoint: CGPointMake(15.52, 45.93) controlPoint1: CGPointMake(15.46, 45.19) controlPoint2: CGPointMake(15.5, 45.54)];
        [bezier2Path addCurveToPoint: CGPointMake(53.47, 45.93) controlPoint1: CGPointMake(27.57, 45.93) controlPoint2: CGPointMake(41.46, 45.93)];
        [bezier2Path addCurveToPoint: CGPointMake(53.56, 45.16) controlPoint1: CGPointMake(53.5, 45.63) controlPoint2: CGPointMake(53.56, 45.4)];
        [bezier2Path addCurveToPoint: CGPointMake(53.58, 21.82) controlPoint1: CGPointMake(53.56, 38.03) controlPoint2: CGPointMake(53.55, 28.95)];
        [bezier2Path addCurveToPoint: CGPointMake(52.41, 20.81) controlPoint1: CGPointMake(53.58, 20.87) controlPoint2: CGPointMake(53.14, 20.81)];
        [bezier2Path addCurveToPoint: CGPointMake(52.39, 20.81) controlPoint1: CGPointMake(52.41, 20.81) controlPoint2: CGPointMake(52.4, 20.81)];
        [bezier2Path addCurveToPoint: CGPointMake(35.24, 20.82) controlPoint1: CGPointMake(46.98, 20.82) controlPoint2: CGPointMake(41.12, 20.82)];
        [bezier2Path addCurveToPoint: CGPointMake(16.71, 20.8) controlPoint1: CGPointMake(28.9, 20.82) controlPoint2: CGPointMake(22.55, 20.82)];
        [bezier2Path addCurveToPoint: CGPointMake(16.69, 20.8) controlPoint1: CGPointMake(16.7, 20.8) controlPoint2: CGPointMake(16.7, 20.8)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
    }

}


@end
