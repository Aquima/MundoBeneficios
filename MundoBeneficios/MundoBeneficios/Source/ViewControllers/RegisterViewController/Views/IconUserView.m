//
//  UserIconView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconUserView.h"

@implementation IconUserView


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
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(16, 14.97, 24, 23.95)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(28, 39)];
            [bezierPath addCurveToPoint: CGPointMake(16, 27) controlPoint1: CGPointMake(21.37, 39) controlPoint2: CGPointMake(16, 33.63)];
            [bezierPath addCurveToPoint: CGPointMake(28, 15) controlPoint1: CGPointMake(16, 20.37) controlPoint2: CGPointMake(21.37, 15)];
            [bezierPath addCurveToPoint: CGPointMake(40, 27) controlPoint1: CGPointMake(34.63, 15) controlPoint2: CGPointMake(40, 20.37)];
            [bezierPath addCurveToPoint: CGPointMake(28, 39) controlPoint1: CGPointMake(40, 33.63) controlPoint2: CGPointMake(34.63, 39)];
            [bezierPath addLineToPoint: CGPointMake(28, 37)];
            [bezierPath addCurveToPoint: CGPointMake(35.07, 34.07) controlPoint1: CGPointMake(30.77, 37) controlPoint2: CGPointMake(33.26, 35.88)];
            [bezierPath addCurveToPoint: CGPointMake(35.16, 33.98) controlPoint1: CGPointMake(35.1, 34.04) controlPoint2: CGPointMake(35.13, 34.01)];
            [bezierPath addLineToPoint: CGPointMake(37, 33.98)];
            [bezierPath addCurveToPoint: CGPointMake(37, 33.97) controlPoint1: CGPointMake(37, 33.97) controlPoint2: CGPointMake(37, 33.97)];
            [bezierPath addCurveToPoint: CGPointMake(36.66, 32.58) controlPoint1: CGPointMake(37, 33.47) controlPoint2: CGPointMake(36.87, 32.99)];
            [bezierPath addCurveToPoint: CGPointMake(36.49, 32.29) controlPoint1: CGPointMake(36.61, 32.48) controlPoint2: CGPointMake(36.55, 32.38)];
            [bezierPath addCurveToPoint: CGPointMake(38, 27) controlPoint1: CGPointMake(37.45, 30.76) controlPoint2: CGPointMake(38, 28.95)];
            [bezierPath addCurveToPoint: CGPointMake(35.07, 19.93) controlPoint1: CGPointMake(38, 24.23) controlPoint2: CGPointMake(36.88, 21.74)];
            [bezierPath addCurveToPoint: CGPointMake(28, 17) controlPoint1: CGPointMake(33.26, 18.12) controlPoint2: CGPointMake(30.77, 17)];
            [bezierPath addCurveToPoint: CGPointMake(20.93, 19.93) controlPoint1: CGPointMake(25.23, 17) controlPoint2: CGPointMake(22.74, 18.12)];
            [bezierPath addCurveToPoint: CGPointMake(18, 27) controlPoint1: CGPointMake(19.12, 21.74) controlPoint2: CGPointMake(18, 24.23)];
            [bezierPath addCurveToPoint: CGPointMake(19.51, 32.29) controlPoint1: CGPointMake(18, 28.94) controlPoint2: CGPointMake(18.55, 30.75)];
            [bezierPath addCurveToPoint: CGPointMake(19.34, 32.58) controlPoint1: CGPointMake(19.45, 32.38) controlPoint2: CGPointMake(19.39, 32.48)];
            [bezierPath addCurveToPoint: CGPointMake(19, 33.97) controlPoint1: CGPointMake(19.13, 32.99) controlPoint2: CGPointMake(19, 33.47)];
            [bezierPath addCurveToPoint: CGPointMake(19, 33.98) controlPoint1: CGPointMake(19, 33.97) controlPoint2: CGPointMake(19, 33.97)];
            [bezierPath addLineToPoint: CGPointMake(20.84, 33.98)];
            [bezierPath addCurveToPoint: CGPointMake(20.93, 34.07) controlPoint1: CGPointMake(20.87, 34.01) controlPoint2: CGPointMake(20.9, 34.04)];
            [bezierPath addCurveToPoint: CGPointMake(28, 37) controlPoint1: CGPointMake(22.74, 35.88) controlPoint2: CGPointMake(25.23, 37)];
            [bezierPath addLineToPoint: CGPointMake(28, 39)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(26.25, 29.13)];
        [bezier2Path addCurveToPoint: CGPointMake(23.5, 24.99) controlPoint1: CGPointMake(24.63, 28.45) controlPoint2: CGPointMake(23.5, 26.85)];
        [bezier2Path addLineToPoint: CGPointMake(23.5, 24.99)];
        [bezier2Path addCurveToPoint: CGPointMake(26.25, 29.13) controlPoint1: CGPointMake(23.5, 26.85) controlPoint2: CGPointMake(24.63, 28.45)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(29.74, 29.13)];
        [bezier2Path addLineToPoint: CGPointMake(29.74, 29.13)];
        [bezier2Path addCurveToPoint: CGPointMake(32.48, 24.99) controlPoint1: CGPointMake(31.34, 28.44) controlPoint2: CGPointMake(32.47, 26.85)];
        [bezier2Path addLineToPoint: CGPointMake(32.48, 24.99)];
        [bezier2Path addCurveToPoint: CGPointMake(29.74, 29.13) controlPoint1: CGPointMake(32.47, 26.85) controlPoint2: CGPointMake(31.34, 28.44)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(27.93, 27.48)];
        [bezier2Path addCurveToPoint: CGPointMake(27.68, 27.46) controlPoint1: CGPointMake(27.84, 27.48) controlPoint2: CGPointMake(27.76, 27.47)];
        [bezier2Path addCurveToPoint: CGPointMake(27.93, 27.48) controlPoint1: CGPointMake(27.76, 27.47) controlPoint2: CGPointMake(27.84, 27.48)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(28.05, 27.48)];
        [bezier2Path addCurveToPoint: CGPointMake(28.3, 27.46) controlPoint1: CGPointMake(28.14, 27.48) controlPoint2: CGPointMake(28.22, 27.47)];
        [bezier2Path addCurveToPoint: CGPointMake(28.05, 27.48) controlPoint1: CGPointMake(28.22, 27.47) controlPoint2: CGPointMake(28.14, 27.48)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(27.67, 27.46)];
        [bezier2Path addCurveToPoint: CGPointMake(27.67, 27.46) controlPoint1: CGPointMake(27.67, 27.46) controlPoint2: CGPointMake(27.67, 27.46)];
        [bezier2Path addCurveToPoint: CGPointMake(27.67, 27.46) controlPoint1: CGPointMake(27.67, 27.46) controlPoint2: CGPointMake(27.67, 27.46)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(30.48, 24.99)];
        [bezier2Path addCurveToPoint: CGPointMake(29.74, 23.23) controlPoint1: CGPointMake(30.47, 24.31) controlPoint2: CGPointMake(30.2, 23.69)];
        [bezier2Path addCurveToPoint: CGPointMake(27.99, 22.5) controlPoint1: CGPointMake(29.29, 22.78) controlPoint2: CGPointMake(28.67, 22.5)];
        [bezier2Path addCurveToPoint: CGPointMake(29.74, 23.23) controlPoint1: CGPointMake(28.67, 22.5) controlPoint2: CGPointMake(29.29, 22.78)];
        [bezier2Path addCurveToPoint: CGPointMake(30.48, 24.99) controlPoint1: CGPointMake(30.2, 23.69) controlPoint2: CGPointMake(30.47, 24.31)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(25.5, 24.99)];
        [bezier2Path addLineToPoint: CGPointMake(25.5, 24.99)];
        [bezier2Path addCurveToPoint: CGPointMake(26.23, 23.23) controlPoint1: CGPointMake(25.5, 24.31) controlPoint2: CGPointMake(25.78, 23.69)];
        [bezier2Path addCurveToPoint: CGPointMake(27.99, 22.5) controlPoint1: CGPointMake(26.69, 22.78) controlPoint2: CGPointMake(27.3, 22.5)];
        [bezier2Path addCurveToPoint: CGPointMake(26.23, 23.23) controlPoint1: CGPointMake(27.3, 22.5) controlPoint2: CGPointMake(26.69, 22.78)];
        [bezier2Path addCurveToPoint: CGPointMake(25.5, 24.99) controlPoint1: CGPointMake(25.78, 23.69) controlPoint2: CGPointMake(25.5, 24.31)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(26.48, 20.76)];
        [bezier2Path addCurveToPoint: CGPointMake(27.99, 20.5) controlPoint1: CGPointMake(26.95, 20.59) controlPoint2: CGPointMake(27.46, 20.5)];
        [bezier2Path addCurveToPoint: CGPointMake(29.49, 20.76) controlPoint1: CGPointMake(28.52, 20.5) controlPoint2: CGPointMake(29.02, 20.59)];
        [bezier2Path addCurveToPoint: CGPointMake(27.99, 20.5) controlPoint1: CGPointMake(29.02, 20.59) controlPoint2: CGPointMake(28.52, 20.5)];
        [bezier2Path addCurveToPoint: CGPointMake(26.48, 20.76) controlPoint1: CGPointMake(27.46, 20.5) controlPoint2: CGPointMake(26.95, 20.59)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
        [bezier3Path moveToPoint: CGPointMake(26.25, 29.13)];
        [bezier3Path addCurveToPoint: CGPointMake(23.5, 24.99) controlPoint1: CGPointMake(24.63, 28.45) controlPoint2: CGPointMake(23.5, 26.85)];
        [bezier3Path addCurveToPoint: CGPointMake(26.48, 20.76) controlPoint1: CGPointMake(23.5, 23.04) controlPoint2: CGPointMake(24.75, 21.38)];
        [bezier3Path addCurveToPoint: CGPointMake(27.99, 20.5) controlPoint1: CGPointMake(26.95, 20.59) controlPoint2: CGPointMake(27.46, 20.5)];
        [bezier3Path addCurveToPoint: CGPointMake(29.49, 20.76) controlPoint1: CGPointMake(28.52, 20.5) controlPoint2: CGPointMake(29.02, 20.59)];
        [bezier3Path addCurveToPoint: CGPointMake(32.48, 24.99) controlPoint1: CGPointMake(31.23, 21.38) controlPoint2: CGPointMake(32.47, 23.04)];
        [bezier3Path addCurveToPoint: CGPointMake(29.74, 29.13) controlPoint1: CGPointMake(32.47, 26.85) controlPoint2: CGPointMake(31.34, 28.44)];
        [bezier3Path addCurveToPoint: CGPointMake(28, 29) controlPoint1: CGPointMake(29.11, 29.04) controlPoint2: CGPointMake(28.52, 29)];
        [bezier3Path addCurveToPoint: CGPointMake(27.99, 29) controlPoint1: CGPointMake(28, 29) controlPoint2: CGPointMake(27.99, 29)];
        [bezier3Path addLineToPoint: CGPointMake(27.99, 27.48)];
        [bezier3Path addCurveToPoint: CGPointMake(28.05, 27.48) controlPoint1: CGPointMake(28.01, 27.48) controlPoint2: CGPointMake(28.03, 27.48)];
        [bezier3Path addCurveToPoint: CGPointMake(28.3, 27.46) controlPoint1: CGPointMake(28.14, 27.48) controlPoint2: CGPointMake(28.22, 27.47)];
        [bezier3Path addCurveToPoint: CGPointMake(28.31, 27.46) controlPoint1: CGPointMake(28.31, 27.46) controlPoint2: CGPointMake(28.31, 27.46)];
        [bezier3Path addCurveToPoint: CGPointMake(29.74, 26.75) controlPoint1: CGPointMake(28.87, 27.39) controlPoint2: CGPointMake(29.36, 27.13)];
        [bezier3Path addCurveToPoint: CGPointMake(30.48, 24.99) controlPoint1: CGPointMake(30.2, 26.3) controlPoint2: CGPointMake(30.47, 25.68)];
        [bezier3Path addCurveToPoint: CGPointMake(29.74, 23.23) controlPoint1: CGPointMake(30.47, 24.31) controlPoint2: CGPointMake(30.2, 23.69)];
        [bezier3Path addCurveToPoint: CGPointMake(27.99, 22.5) controlPoint1: CGPointMake(29.29, 22.78) controlPoint2: CGPointMake(28.67, 22.5)];
        [bezier3Path addCurveToPoint: CGPointMake(26.23, 23.23) controlPoint1: CGPointMake(27.3, 22.5) controlPoint2: CGPointMake(26.69, 22.78)];
        [bezier3Path addCurveToPoint: CGPointMake(25.5, 24.99) controlPoint1: CGPointMake(25.78, 23.69) controlPoint2: CGPointMake(25.5, 24.31)];
        [bezier3Path addCurveToPoint: CGPointMake(26.23, 26.75) controlPoint1: CGPointMake(25.5, 25.68) controlPoint2: CGPointMake(25.78, 26.3)];
        [bezier3Path addCurveToPoint: CGPointMake(27.67, 27.46) controlPoint1: CGPointMake(26.62, 27.13) controlPoint2: CGPointMake(27.12, 27.39)];
        [bezier3Path addCurveToPoint: CGPointMake(27.67, 27.46) controlPoint1: CGPointMake(27.67, 27.46) controlPoint2: CGPointMake(27.67, 27.46)];
        [bezier3Path addCurveToPoint: CGPointMake(27.68, 27.46) controlPoint1: CGPointMake(27.68, 27.46) controlPoint2: CGPointMake(27.68, 27.46)];
        [bezier3Path addCurveToPoint: CGPointMake(27.93, 27.48) controlPoint1: CGPointMake(27.76, 27.47) controlPoint2: CGPointMake(27.84, 27.48)];
        [bezier3Path addCurveToPoint: CGPointMake(27.99, 27.48) controlPoint1: CGPointMake(27.95, 27.48) controlPoint2: CGPointMake(27.97, 27.48)];
        [bezier3Path addLineToPoint: CGPointMake(27.99, 29)];
        [bezier3Path addCurveToPoint: CGPointMake(26.25, 29.13) controlPoint1: CGPointMake(27.46, 29) controlPoint2: CGPointMake(26.87, 29.05)];
        [bezier3Path closePath];
        [fillColor setFill];
        [bezier3Path fill];
        
        
        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
        [bezier4Path moveToPoint: CGPointMake(37, 33.98)];
        [bezier4Path addLineToPoint: CGPointMake(35.16, 33.98)];
        [bezier4Path addCurveToPoint: CGPointMake(36.49, 32.29) controlPoint1: CGPointMake(35.66, 33.46) controlPoint2: CGPointMake(36.11, 32.9)];
        [bezier4Path addCurveToPoint: CGPointMake(36.66, 32.58) controlPoint1: CGPointMake(36.55, 32.38) controlPoint2: CGPointMake(36.61, 32.48)];
        [bezier4Path addCurveToPoint: CGPointMake(37, 33.97) controlPoint1: CGPointMake(36.87, 32.99) controlPoint2: CGPointMake(37, 33.47)];
        [bezier4Path addCurveToPoint: CGPointMake(37, 33.98) controlPoint1: CGPointMake(37, 33.97) controlPoint2: CGPointMake(37, 33.97)];
        [bezier4Path closePath];
        [bezier4Path moveToPoint: CGPointMake(35.16, 33.98)];
        [bezier4Path addLineToPoint: CGPointMake(35, 33.98)];
        [bezier4Path addCurveToPoint: CGPointMake(34.88, 33.49) controlPoint1: CGPointMake(35, 33.81) controlPoint2: CGPointMake(34.96, 33.66)];
        [bezier4Path addCurveToPoint: CGPointMake(34.45, 32.96) controlPoint1: CGPointMake(34.79, 33.33) controlPoint2: CGPointMake(34.65, 33.14)];
        [bezier4Path addCurveToPoint: CGPointMake(32.64, 31.91) controlPoint1: CGPointMake(34.05, 32.58) controlPoint2: CGPointMake(33.4, 32.21)];
        [bezier4Path addCurveToPoint: CGPointMake(28.03, 31) controlPoint1: CGPointMake(31.15, 31.31) controlPoint2: CGPointMake(29.23, 31)];
        [bezier4Path addCurveToPoint: CGPointMake(28, 31) controlPoint1: CGPointMake(28.02, 31) controlPoint2: CGPointMake(28.01, 31)];
        [bezier4Path addCurveToPoint: CGPointMake(27.99, 31) controlPoint1: CGPointMake(28, 31) controlPoint2: CGPointMake(27.99, 31)];
        [bezier4Path addCurveToPoint: CGPointMake(25.02, 31.39) controlPoint1: CGPointMake(27.21, 31) controlPoint2: CGPointMake(26.1, 31.13)];
        [bezier4Path addCurveToPoint: CGPointMake(22.1, 32.54) controlPoint1: CGPointMake(23.93, 31.65) controlPoint2: CGPointMake(22.84, 32.06)];
        [bezier4Path addCurveToPoint: CGPointMake(21.12, 33.49) controlPoint1: CGPointMake(21.6, 32.86) controlPoint2: CGPointMake(21.27, 33.2)];
        [bezier4Path addCurveToPoint: CGPointMake(21, 33.98) controlPoint1: CGPointMake(21.04, 33.66) controlPoint2: CGPointMake(21, 33.81)];
        [bezier4Path addLineToPoint: CGPointMake(20.84, 33.98)];
        [bezier4Path addCurveToPoint: CGPointMake(19.51, 32.29) controlPoint1: CGPointMake(20.34, 33.46) controlPoint2: CGPointMake(19.89, 32.9)];
        [bezier4Path addCurveToPoint: CGPointMake(20.19, 31.49) controlPoint1: CGPointMake(19.7, 31.99) controlPoint2: CGPointMake(19.93, 31.73)];
        [bezier4Path addCurveToPoint: CGPointMake(22.62, 30.05) controlPoint1: CGPointMake(20.87, 30.87) controlPoint2: CGPointMake(21.71, 30.41)];
        [bezier4Path addCurveToPoint: CGPointMake(27.99, 29) controlPoint1: CGPointMake(24.43, 29.34) controlPoint2: CGPointMake(26.49, 29.01)];
        [bezier4Path addLineToPoint: CGPointMake(27.99, 29.48)];
        [bezier4Path addLineToPoint: CGPointMake(27.99, 29)];
        [bezier4Path addCurveToPoint: CGPointMake(28, 29) controlPoint1: CGPointMake(27.99, 29) controlPoint2: CGPointMake(28, 29)];
        [bezier4Path addCurveToPoint: CGPointMake(31.45, 29.45) controlPoint1: CGPointMake(28.99, 29) controlPoint2: CGPointMake(30.21, 29.15)];
        [bezier4Path addCurveToPoint: CGPointMake(34.98, 30.86) controlPoint1: CGPointMake(32.7, 29.75) controlPoint2: CGPointMake(33.95, 30.2)];
        [bezier4Path addCurveToPoint: CGPointMake(36.49, 32.29) controlPoint1: CGPointMake(35.58, 31.24) controlPoint2: CGPointMake(36.11, 31.7)];
        [bezier4Path addCurveToPoint: CGPointMake(35.16, 33.98) controlPoint1: CGPointMake(36.11, 32.9) controlPoint2: CGPointMake(35.66, 33.46)];
        [bezier4Path closePath];
        [bezier4Path moveToPoint: CGPointMake(20.84, 33.98)];
        [bezier4Path addLineToPoint: CGPointMake(19, 33.98)];
        [bezier4Path addCurveToPoint: CGPointMake(19, 33.97) controlPoint1: CGPointMake(19, 33.97) controlPoint2: CGPointMake(19, 33.97)];
        [bezier4Path addCurveToPoint: CGPointMake(19.34, 32.58) controlPoint1: CGPointMake(19, 33.47) controlPoint2: CGPointMake(19.13, 32.99)];
        [bezier4Path addCurveToPoint: CGPointMake(19.51, 32.29) controlPoint1: CGPointMake(19.39, 32.48) controlPoint2: CGPointMake(19.45, 32.38)];
        [bezier4Path addCurveToPoint: CGPointMake(20.84, 33.98) controlPoint1: CGPointMake(19.89, 32.9) controlPoint2: CGPointMake(20.34, 33.46)];
        [bezier4Path closePath];
        [fillColor setFill];
        [bezier4Path fill];
    }

}


@end
