//
//  IconEntertainmentView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconEntertainmentView.h"

@implementation IconEntertainmentView


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
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(6.05, 6.3, 57.6, 57.7)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(33.28, 64)];
            [bezierPath addCurveToPoint: CGPointMake(32.56, 64) controlPoint1: CGPointMake(33.04, 64) controlPoint2: CGPointMake(32.8, 64)];
            [bezierPath addCurveToPoint: CGPointMake(31.99, 63.49) controlPoint1: CGPointMake(32.37, 63.83) controlPoint2: CGPointMake(32.18, 63.66)];
            [bezierPath addCurveToPoint: CGPointMake(27.69, 61.81) controlPoint1: CGPointMake(30.71, 62.37) controlPoint2: CGPointMake(29.27, 61.81)];
            [bezierPath addCurveToPoint: CGPointMake(26.32, 61.94) controlPoint1: CGPointMake(27.24, 61.81) controlPoint2: CGPointMake(26.79, 61.85)];
            [bezierPath addCurveToPoint: CGPointMake(22.7, 64) controlPoint1: CGPointMake(24.88, 62.21) controlPoint2: CGPointMake(23.73, 62.99)];
            [bezierPath addCurveToPoint: CGPointMake(21.98, 64) controlPoint1: CGPointMake(22.46, 64) controlPoint2: CGPointMake(22.22, 64)];
            [bezierPath addCurveToPoint: CGPointMake(21.21, 63.27) controlPoint1: CGPointMake(21.72, 63.76) controlPoint2: CGPointMake(21.46, 63.52)];
            [bezierPath addCurveToPoint: CGPointMake(12.76, 54.82) controlPoint1: CGPointMake(18.39, 60.45) controlPoint2: CGPointMake(15.57, 57.64)];
            [bezierPath addCurveToPoint: CGPointMake(6, 48.02) controlPoint1: CGPointMake(10.5, 52.56) controlPoint2: CGPointMake(8.25, 50.29)];
            [bezierPath addCurveToPoint: CGPointMake(6, 47.3) controlPoint1: CGPointMake(6, 47.78) controlPoint2: CGPointMake(6, 47.54)];
            [bezierPath addCurveToPoint: CGPointMake(6.59, 46.64) controlPoint1: CGPointMake(6.2, 47.08) controlPoint2: CGPointMake(6.4, 46.86)];
            [bezierPath addCurveToPoint: CGPointMake(8.06, 41.06) controlPoint1: CGPointMake(7.96, 45.01) controlPoint2: CGPointMake(8.45, 43.15)];
            [bezierPath addCurveToPoint: CGPointMake(6, 37.44) controlPoint1: CGPointMake(7.79, 39.62) controlPoint2: CGPointMake(7.01, 38.47)];
            [bezierPath addCurveToPoint: CGPointMake(6, 36.72) controlPoint1: CGPointMake(6, 37.2) controlPoint2: CGPointMake(6, 36.96)];
            [bezierPath addCurveToPoint: CGPointMake(6.86, 35.82) controlPoint1: CGPointMake(6.29, 36.42) controlPoint2: CGPointMake(6.57, 36.11)];
            [bezierPath addCurveToPoint: CGPointMake(35.5, 7.18) controlPoint1: CGPointMake(16.41, 26.27) controlPoint2: CGPointMake(25.95, 16.73)];
            [bezierPath addCurveToPoint: CGPointMake(36.4, 6.32) controlPoint1: CGPointMake(35.79, 6.89) controlPoint2: CGPointMake(36.1, 6.61)];
            [bezierPath addCurveToPoint: CGPointMake(37.12, 6.32) controlPoint1: CGPointMake(36.64, 6.32) controlPoint2: CGPointMake(36.88, 6.32)];
            [bezierPath addCurveToPoint: CGPointMake(37.48, 6.62) controlPoint1: CGPointMake(37.24, 6.42) controlPoint2: CGPointMake(37.37, 6.51)];
            [bezierPath addCurveToPoint: CGPointMake(42.18, 8.54) controlPoint1: CGPointMake(38.78, 7.9) controlPoint2: CGPointMake(40.39, 8.47)];
            [bezierPath addCurveToPoint: CGPointMake(42.56, 8.55) controlPoint1: CGPointMake(42.31, 8.54) controlPoint2: CGPointMake(42.44, 8.55)];
            [bezierPath addCurveToPoint: CGPointMake(46.34, 7.01) controlPoint1: CGPointMake(44, 8.55) controlPoint2: CGPointMake(45.33, 8.19)];
            [bezierPath addCurveToPoint: CGPointMake(46.98, 6.32) controlPoint1: CGPointMake(46.55, 6.78) controlPoint2: CGPointMake(46.77, 6.55)];
            [bezierPath addCurveToPoint: CGPointMake(47.7, 6.32) controlPoint1: CGPointMake(47.22, 6.32) controlPoint2: CGPointMake(47.46, 6.32)];
            [bezierPath addCurveToPoint: CGPointMake(48.23, 6.79) controlPoint1: CGPointMake(47.87, 6.48) controlPoint2: CGPointMake(48.06, 6.62)];
            [bezierPath addCurveToPoint: CGPointMake(56.79, 15.37) controlPoint1: CGPointMake(51.08, 9.65) controlPoint2: CGPointMake(53.94, 12.51)];
            [bezierPath addCurveToPoint: CGPointMake(63.68, 22.3) controlPoint1: CGPointMake(59.09, 17.68) controlPoint2: CGPointMake(61.38, 19.99)];
            [bezierPath addCurveToPoint: CGPointMake(63.68, 23.02) controlPoint1: CGPointMake(63.68, 22.54) controlPoint2: CGPointMake(63.68, 22.78)];
            [bezierPath addCurveToPoint: CGPointMake(63.25, 23.5) controlPoint1: CGPointMake(63.54, 23.18) controlPoint2: CGPointMake(63.39, 23.34)];
            [bezierPath addCurveToPoint: CGPointMake(61.5, 28.55) controlPoint1: CGPointMake(61.93, 24.93) controlPoint2: CGPointMake(61.34, 26.61)];
            [bezierPath addCurveToPoint: CGPointMake(63.68, 32.88) controlPoint1: CGPointMake(61.64, 30.29) controlPoint2: CGPointMake(62.49, 31.67)];
            [bezierPath addCurveToPoint: CGPointMake(63.68, 33.6) controlPoint1: CGPointMake(63.68, 33.12) controlPoint2: CGPointMake(63.68, 33.36)];
            [bezierPath addCurveToPoint: CGPointMake(62.69, 34.63) controlPoint1: CGPointMake(63.35, 33.94) controlPoint2: CGPointMake(63.03, 34.29)];
            [bezierPath addCurveToPoint: CGPointMake(34.31, 63.01) controlPoint1: CGPointMake(53.23, 44.09) controlPoint2: CGPointMake(43.77, 53.55)];
            [bezierPath addCurveToPoint: CGPointMake(33.28, 64) controlPoint1: CGPointMake(33.97, 63.35) controlPoint2: CGPointMake(33.62, 63.67)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(27.63, 60.01)];
            [bezierPath addCurveToPoint: CGPointMake(32.82, 61.66) controlPoint1: CGPointMake(29.51, 60.01) controlPoint2: CGPointMake(31.35, 60.59)];
            [bezierPath addCurveToPoint: CGPointMake(61.34, 33.13) controlPoint1: CGPointMake(42.33, 52.15) controlPoint2: CGPointMake(51.82, 42.66)];
            [bezierPath addCurveToPoint: CGPointMake(59.69, 27.96) controlPoint1: CGPointMake(60.25, 31.62) controlPoint2: CGPointMake(59.69, 29.88)];
            [bezierPath addCurveToPoint: CGPointMake(61.3, 22.81) controlPoint1: CGPointMake(59.68, 26.02) controlPoint2: CGPointMake(60.25, 24.27)];
            [bezierPath addCurveToPoint: CGPointMake(47.34, 8.84) controlPoint1: CGPointMake(56.6, 18.11) controlPoint2: CGPointMake(51.95, 13.46)];
            [bezierPath addCurveToPoint: CGPointMake(42.41, 10.32) controlPoint1: CGPointMake(45.69, 9.86) controlPoint2: CGPointMake(44.05, 10.32)];
            [bezierPath addCurveToPoint: CGPointMake(36.86, 8.7) controlPoint1: CGPointMake(40.55, 10.32) controlPoint2: CGPointMake(38.7, 9.73)];
            [bezierPath addCurveToPoint: CGPointMake(8.35, 37.21) controlPoint1: CGPointMake(27.36, 18.2) controlPoint2: CGPointMake(17.86, 27.7)];
            [bezierPath addCurveToPoint: CGPointMake(9.98, 42.39) controlPoint1: CGPointMake(9.44, 38.73) controlPoint2: CGPointMake(9.98, 40.47)];
            [bezierPath addCurveToPoint: CGPointMake(8.33, 47.57) controlPoint1: CGPointMake(9.97, 44.31) controlPoint2: CGPointMake(9.41, 46.05)];
            [bezierPath addCurveToPoint: CGPointMake(22.41, 61.66) controlPoint1: CGPointMake(13.04, 52.28) controlPoint2: CGPointMake(17.73, 56.97)];
            [bezierPath addCurveToPoint: CGPointMake(27.63, 60.01) controlPoint1: CGPointMake(24, 60.54) controlPoint2: CGPointMake(25.83, 60.01)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(30.04, 55.62)];
        [bezier2Path addCurveToPoint: CGPointMake(26.5, 54.14) controlPoint1: CGPointMake(28.76, 55.62) controlPoint2: CGPointMake(27.49, 55.12)];
        [bezier2Path addCurveToPoint: CGPointMake(15.84, 43.48) controlPoint1: CGPointMake(22.94, 50.59) controlPoint2: CGPointMake(19.39, 47.03)];
        [bezier2Path addCurveToPoint: CGPointMake(14.4, 40.1) controlPoint1: CGPointMake(14.86, 42.51) controlPoint2: CGPointMake(14.41, 41.33)];
        [bezier2Path addCurveToPoint: CGPointMake(15.88, 36.41) controlPoint1: CGPointMake(14.41, 38.58) controlPoint2: CGPointMake(14.89, 37.4)];
        [bezier2Path addCurveToPoint: CGPointMake(36.09, 16.2) controlPoint1: CGPointMake(22.62, 29.68) controlPoint2: CGPointMake(29.35, 22.94)];
        [bezier2Path addCurveToPoint: CGPointMake(39.64, 14.7) controlPoint1: CGPointMake(37.1, 15.2) controlPoint2: CGPointMake(38.37, 14.7)];
        [bezier2Path addCurveToPoint: CGPointMake(43.2, 16.2) controlPoint1: CGPointMake(40.92, 14.7) controlPoint2: CGPointMake(42.19, 15.2)];
        [bezier2Path addCurveToPoint: CGPointMake(53.81, 26.82) controlPoint1: CGPointMake(46.74, 19.74) controlPoint2: CGPointMake(50.28, 23.27)];
        [bezier2Path addCurveToPoint: CGPointMake(53.82, 33.88) controlPoint1: CGPointMake(55.79, 28.8) controlPoint2: CGPointMake(55.79, 31.9)];
        [bezier2Path addCurveToPoint: CGPointMake(33.56, 54.14) controlPoint1: CGPointMake(47.07, 40.64) controlPoint2: CGPointMake(40.32, 47.39)];
        [bezier2Path addCurveToPoint: CGPointMake(30.04, 55.62) controlPoint1: CGPointMake(32.57, 55.13) controlPoint2: CGPointMake(31.3, 55.62)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(39.64, 16.49)];
        [bezier2Path addCurveToPoint: CGPointMake(37.39, 17.63) controlPoint1: CGPointMake(38.9, 16.49) controlPoint2: CGPointMake(38.15, 16.87)];
        [bezier2Path addCurveToPoint: CGPointMake(23.84, 31.18) controlPoint1: CGPointMake(32.87, 22.15) controlPoint2: CGPointMake(28.36, 26.66)];
        [bezier2Path addCurveToPoint: CGPointMake(17.09, 37.93) controlPoint1: CGPointMake(21.59, 33.43) controlPoint2: CGPointMake(19.33, 35.67)];
        [bezier2Path addCurveToPoint: CGPointMake(17, 41.9) controlPoint1: CGPointMake(15.9, 39.13) controlPoint2: CGPointMake(15.84, 40.73)];
        [bezier2Path addCurveToPoint: CGPointMake(28.08, 52.99) controlPoint1: CGPointMake(20.68, 45.61) controlPoint2: CGPointMake(24.38, 49.3)];
        [bezier2Path addCurveToPoint: CGPointMake(29.99, 53.81) controlPoint1: CGPointMake(28.6, 53.51) controlPoint2: CGPointMake(29.24, 53.81)];
        [bezier2Path addCurveToPoint: CGPointMake(30.02, 53.81) controlPoint1: CGPointMake(30, 53.81) controlPoint2: CGPointMake(30.01, 53.81)];
        [bezier2Path addCurveToPoint: CGPointMake(30.04, 53.81) controlPoint1: CGPointMake(30.03, 53.81) controlPoint2: CGPointMake(30.04, 53.81)];
        [bezier2Path addCurveToPoint: CGPointMake(32.27, 52.71) controlPoint1: CGPointMake(30.96, 53.81) controlPoint2: CGPointMake(31.65, 53.34)];
        [bezier2Path addCurveToPoint: CGPointMake(52.36, 32.62) controlPoint1: CGPointMake(38.96, 46.01) controlPoint2: CGPointMake(45.66, 39.32)];
        [bezier2Path addCurveToPoint: CGPointMake(52.36, 28.09) controlPoint1: CGPointMake(53.89, 31.08) controlPoint2: CGPointMake(53.89, 29.62)];
        [bezier2Path addCurveToPoint: CGPointMake(41.92, 17.64) controlPoint1: CGPointMake(48.88, 24.61) controlPoint2: CGPointMake(45.4, 21.13)];
        [bezier2Path addCurveToPoint: CGPointMake(39.64, 16.49) controlPoint1: CGPointMake(41.14, 16.87) controlPoint2: CGPointMake(40.39, 16.49)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
        [bezier3Path moveToPoint: CGPointMake(25.42, 39.96)];
        [bezier3Path addCurveToPoint: CGPointMake(24.39, 38.56) controlPoint1: CGPointMake(24.5, 39.96) controlPoint2: CGPointMake(24.04, 39.19)];
        [bezier3Path addCurveToPoint: CGPointMake(24.77, 38.1) controlPoint1: CGPointMake(24.48, 38.38) controlPoint2: CGPointMake(24.63, 38.24)];
        [bezier3Path addCurveToPoint: CGPointMake(38.73, 24.13) controlPoint1: CGPointMake(29.42, 33.44) controlPoint2: CGPointMake(34.08, 28.79)];
        [bezier3Path addCurveToPoint: CGPointMake(39.19, 23.75) controlPoint1: CGPointMake(38.87, 23.99) controlPoint2: CGPointMake(39.02, 23.84)];
        [bezier3Path addCurveToPoint: CGPointMake(39.67, 23.61) controlPoint1: CGPointMake(39.35, 23.66) controlPoint2: CGPointMake(39.51, 23.61)];
        [bezier3Path addCurveToPoint: CGPointMake(40.33, 23.93) controlPoint1: CGPointMake(39.91, 23.61) controlPoint2: CGPointMake(40.14, 23.72)];
        [bezier3Path addCurveToPoint: CGPointMake(40.48, 25.03) controlPoint1: CGPointMake(40.64, 24.24) controlPoint2: CGPointMake(40.71, 24.63)];
        [bezier3Path addCurveToPoint: CGPointMake(40.1, 25.49) controlPoint1: CGPointMake(40.38, 25.2) controlPoint2: CGPointMake(40.24, 25.35)];
        [bezier3Path addCurveToPoint: CGPointMake(26.14, 39.45) controlPoint1: CGPointMake(35.45, 30.14) controlPoint2: CGPointMake(30.8, 34.8)];
        [bezier3Path addCurveToPoint: CGPointMake(25.43, 39.96) controlPoint1: CGPointMake(25.89, 39.69) controlPoint2: CGPointMake(25.58, 39.86)];
        [bezier3Path addCurveToPoint: CGPointMake(25.42, 39.96) controlPoint1: CGPointMake(25.43, 39.96) controlPoint2: CGPointMake(25.43, 39.96)];
        [bezier3Path closePath];
        [fillColor setFill];
        [bezier3Path fill];
        
        
        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
        [bezier4Path moveToPoint: CGPointMake(33.84, 41.89)];
        [bezier4Path addCurveToPoint: CGPointMake(33.22, 41.62) controlPoint1: CGPointMake(33.62, 41.89) controlPoint2: CGPointMake(33.4, 41.8)];
        [bezier4Path addCurveToPoint: CGPointMake(33.34, 40.1) controlPoint1: CGPointMake(32.78, 41.21) controlPoint2: CGPointMake(32.82, 40.62)];
        [bezier4Path addCurveToPoint: CGPointMake(40.77, 32.67) controlPoint1: CGPointMake(35.82, 37.62) controlPoint2: CGPointMake(38.29, 35.15)];
        [bezier4Path addCurveToPoint: CGPointMake(41.55, 32.26) controlPoint1: CGPointMake(41, 32.44) controlPoint2: CGPointMake(41.26, 32.26)];
        [bezier4Path addCurveToPoint: CGPointMake(41.94, 32.38) controlPoint1: CGPointMake(41.67, 32.26) controlPoint2: CGPointMake(41.81, 32.3)];
        [bezier4Path addCurveToPoint: CGPointMake(42.67, 33.2) controlPoint1: CGPointMake(42.23, 32.56) controlPoint2: CGPointMake(42.41, 32.9)];
        [bezier4Path addCurveToPoint: CGPointMake(42.12, 34.04) controlPoint1: CGPointMake(42.44, 33.55) controlPoint2: CGPointMake(42.32, 33.84)];
        [bezier4Path addCurveToPoint: CGPointMake(34.7, 41.47) controlPoint1: CGPointMake(39.65, 36.52) controlPoint2: CGPointMake(37.18, 39)];
        [bezier4Path addCurveToPoint: CGPointMake(33.84, 41.89) controlPoint1: CGPointMake(34.42, 41.75) controlPoint2: CGPointMake(34.12, 41.89)];
        [bezier4Path closePath];
        [fillColor setFill];
        [bezier4Path fill];
    }

}


@end
