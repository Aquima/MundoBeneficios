//
//  IconHealtView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconHealtView.h"

@implementation IconHealtView


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
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(7.5, 11, 56.05, 48.25)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(35.25, 59.33)];
        [bezierPath addCurveToPoint: CGPointMake(34.55, 59.04) controlPoint1: CGPointMake(34.99, 59.33) controlPoint2: CGPointMake(34.74, 59.23)];
        [bezierPath addLineToPoint: CGPointMake(22.7, 47.54)];
        [bezierPath addCurveToPoint: CGPointMake(22.68, 46.13) controlPoint1: CGPointMake(22.3, 47.16) controlPoint2: CGPointMake(22.3, 46.52)];
        [bezierPath addCurveToPoint: CGPointMake(23.4, 45.82) controlPoint1: CGPointMake(22.88, 45.92) controlPoint2: CGPointMake(23.14, 45.82)];
        [bezierPath addCurveToPoint: CGPointMake(24.09, 46.11) controlPoint1: CGPointMake(23.65, 45.82) controlPoint2: CGPointMake(23.9, 45.92)];
        [bezierPath addLineToPoint: CGPointMake(35.23, 56.92)];
        [bezierPath addLineToPoint: CGPointMake(54.77, 37.38)];
        [bezierPath addLineToPoint: CGPointMake(50.02, 37.38)];
        [bezierPath addCurveToPoint: CGPointMake(49.11, 36.79) controlPoint1: CGPointMake(49.62, 37.38) controlPoint2: CGPointMake(49.27, 37.15)];
        [bezierPath addLineToPoint: CGPointMake(44.15, 25.59)];
        [bezierPath addLineToPoint: CGPointMake(33.1, 46.11)];
        [bezierPath addCurveToPoint: CGPointMake(32.3, 46.63) controlPoint1: CGPointMake(32.94, 46.4) controlPoint2: CGPointMake(32.64, 46.6)];
        [bezierPath addCurveToPoint: CGPointMake(32.22, 46.63) controlPoint1: CGPointMake(32.28, 46.63) controlPoint2: CGPointMake(32.25, 46.63)];
        [bezierPath addCurveToPoint: CGPointMake(31.43, 46.24) controlPoint1: CGPointMake(31.92, 46.63) controlPoint2: CGPointMake(31.62, 46.49)];
        [bezierPath addLineToPoint: CGPointMake(24.9, 37.73)];
        [bezierPath addCurveToPoint: CGPointMake(13.61, 37.73) controlPoint1: CGPointMake(23.15, 37.73) controlPoint2: CGPointMake(17.13, 37.73)];
        [bezierPath addCurveToPoint: CGPointMake(12.9, 37.44) controlPoint1: CGPointMake(13.34, 37.73) controlPoint2: CGPointMake(13.09, 37.63)];
        [bezierPath addCurveToPoint: CGPointMake(9.55, 33.33) controlPoint1: CGPointMake(11.58, 36.12) controlPoint2: CGPointMake(10.43, 34.7)];
        [bezierPath addCurveToPoint: CGPointMake(7.78, 29.42) controlPoint1: CGPointMake(8.67, 31.95) controlPoint2: CGPointMake(8.04, 30.63)];
        [bezierPath addCurveToPoint: CGPointMake(7.43, 25.5) controlPoint1: CGPointMake(7.65, 28.78) controlPoint2: CGPointMake(7.43, 27.35)];
        [bezierPath addCurveToPoint: CGPointMake(8.7, 18.57) controlPoint1: CGPointMake(7.43, 23.47) controlPoint2: CGPointMake(7.69, 20.97)];
        [bezierPath addCurveToPoint: CGPointMake(14.43, 12.47) controlPoint1: CGPointMake(9.7, 16.17) controlPoint2: CGPointMake(11.49, 13.88)];
        [bezierPath addCurveToPoint: CGPointMake(21.82, 10.99) controlPoint1: CGPointMake(16.38, 11.54) controlPoint2: CGPointMake(18.81, 10.99)];
        [bezierPath addLineToPoint: CGPointMake(21.82, 10.99)];
        [bezierPath addCurveToPoint: CGPointMake(32.53, 14.97) controlPoint1: CGPointMake(26.4, 10.99) controlPoint2: CGPointMake(30.05, 13)];
        [bezierPath addCurveToPoint: CGPointMake(35.58, 17.9) controlPoint1: CGPointMake(33.9, 16.05) controlPoint2: CGPointMake(34.92, 17.14)];
        [bezierPath addCurveToPoint: CGPointMake(38.62, 14.97) controlPoint1: CGPointMake(36.22, 17.14) controlPoint2: CGPointMake(37.25, 16.05)];
        [bezierPath addCurveToPoint: CGPointMake(49.33, 10.99) controlPoint1: CGPointMake(41.1, 13) controlPoint2: CGPointMake(44.75, 10.99)];
        [bezierPath addCurveToPoint: CGPointMake(49.34, 10.99) controlPoint1: CGPointMake(49.33, 10.99) controlPoint2: CGPointMake(49.33, 10.99)];
        [bezierPath addCurveToPoint: CGPointMake(56.86, 12.76) controlPoint1: CGPointMake(52.42, 10.99) controlPoint2: CGPointMake(54.9, 11.65)];
        [bezierPath addCurveToPoint: CGPointMake(61.21, 17.07) controlPoint1: CGPointMake(58.81, 13.86) controlPoint2: CGPointMake(60.23, 15.4)];
        [bezierPath addCurveToPoint: CGPointMake(63.53, 26.74) controlPoint1: CGPointMake(63.18, 20.42) controlPoint2: CGPointMake(63.52, 24.26)];
        [bezierPath addCurveToPoint: CGPointMake(63.38, 29.36) controlPoint1: CGPointMake(63.53, 28.3) controlPoint2: CGPointMake(63.39, 29.32)];
        [bezierPath addCurveToPoint: CGPointMake(62.39, 30.22) controlPoint1: CGPointMake(63.31, 29.86) controlPoint2: CGPointMake(62.88, 30.22)];
        [bezierPath addCurveToPoint: CGPointMake(62.25, 30.21) controlPoint1: CGPointMake(62.34, 30.22) controlPoint2: CGPointMake(62.3, 30.21)];
        [bezierPath addCurveToPoint: CGPointMake(61.4, 29.08) controlPoint1: CGPointMake(61.7, 30.13) controlPoint2: CGPointMake(61.32, 29.62)];
        [bezierPath addLineToPoint: CGPointMake(61.4, 29.05)];
        [bezierPath addLineToPoint: CGPointMake(61.42, 28.93)];
        [bezierPath addCurveToPoint: CGPointMake(61.46, 28.46) controlPoint1: CGPointMake(61.43, 28.82) controlPoint2: CGPointMake(61.45, 28.66)];
        [bezierPath addCurveToPoint: CGPointMake(61.53, 26.74) controlPoint1: CGPointMake(61.5, 28.05) controlPoint2: CGPointMake(61.53, 27.46)];
        [bezierPath addCurveToPoint: CGPointMake(60.52, 20.31) controlPoint1: CGPointMake(61.53, 25.03) controlPoint2: CGPointMake(61.33, 22.61)];
        [bezierPath addCurveToPoint: CGPointMake(55.87, 14.5) controlPoint1: CGPointMake(59.7, 18.01) controlPoint2: CGPointMake(58.3, 15.87)];
        [bezierPath addCurveToPoint: CGPointMake(49.33, 12.99) controlPoint1: CGPointMake(54.25, 13.58) controlPoint2: CGPointMake(52.14, 12.99)];
        [bezierPath addCurveToPoint: CGPointMake(49.32, 12.99) controlPoint1: CGPointMake(49.33, 12.99) controlPoint2: CGPointMake(49.32, 12.99)];
        [bezierPath addCurveToPoint: CGPointMake(40.08, 16.37) controlPoint1: CGPointMake(45.47, 12.99) controlPoint2: CGPointMake(42.33, 14.63)];
        [bezierPath addCurveToPoint: CGPointMake(36.41, 20.06) controlPoint1: CGPointMake(37.83, 18.09) controlPoint2: CGPointMake(36.52, 19.9)];
        [bezierPath addLineToPoint: CGPointMake(36.4, 20.08)];
        [bezierPath addCurveToPoint: CGPointMake(35.58, 20.51) controlPoint1: CGPointMake(36.21, 20.34) controlPoint2: CGPointMake(35.9, 20.51)];
        [bezierPath addCurveToPoint: CGPointMake(34.75, 20.08) controlPoint1: CGPointMake(35.25, 20.51) controlPoint2: CGPointMake(34.94, 20.34)];
        [bezierPath addLineToPoint: CGPointMake(34.74, 20.06)];
        [bezierPath addLineToPoint: CGPointMake(34.71, 20.01)];
        [bezierPath addCurveToPoint: CGPointMake(34.54, 19.8) controlPoint1: CGPointMake(34.67, 19.96) controlPoint2: CGPointMake(34.62, 19.89)];
        [bezierPath addCurveToPoint: CGPointMake(33.88, 18.99) controlPoint1: CGPointMake(34.4, 19.6) controlPoint2: CGPointMake(34.17, 19.33)];
        [bezierPath addCurveToPoint: CGPointMake(31.29, 16.53) controlPoint1: CGPointMake(33.29, 18.32) controlPoint2: CGPointMake(32.41, 17.43)];
        [bezierPath addCurveToPoint: CGPointMake(21.83, 12.99) controlPoint1: CGPointMake(29.03, 14.74) controlPoint2: CGPointMake(25.8, 12.99)];
        [bezierPath addCurveToPoint: CGPointMake(21.82, 12.99) controlPoint1: CGPointMake(21.83, 12.99) controlPoint2: CGPointMake(21.82, 12.99)];
        [bezierPath addCurveToPoint: CGPointMake(15.29, 14.28) controlPoint1: CGPointMake(19.05, 12.99) controlPoint2: CGPointMake(16.93, 13.49)];
        [bezierPath addCurveToPoint: CGPointMake(11.61, 17.38) controlPoint1: CGPointMake(13.65, 15.07) controlPoint2: CGPointMake(12.48, 16.14)];
        [bezierPath addCurveToPoint: CGPointMake(9.43, 25.5) controlPoint1: CGPointMake(9.88, 19.85) controlPoint2: CGPointMake(9.42, 23.03)];
        [bezierPath addCurveToPoint: CGPointMake(9.74, 29.01) controlPoint1: CGPointMake(9.42, 27.18) controlPoint2: CGPointMake(9.63, 28.52)];
        [bezierPath addCurveToPoint: CGPointMake(11.23, 32.25) controlPoint1: CGPointMake(9.91, 29.84) controlPoint2: CGPointMake(10.44, 31.01)];
        [bezierPath addCurveToPoint: CGPointMake(14.03, 35.73) controlPoint1: CGPointMake(11.96, 33.38) controlPoint2: CGPointMake(12.92, 34.59)];
        [bezierPath addCurveToPoint: CGPointMake(17.2, 35.73) controlPoint1: CGPointMake(14.98, 35.73) controlPoint2: CGPointMake(16.07, 35.73)];
        [bezierPath addCurveToPoint: CGPointMake(21.06, 35.73) controlPoint1: CGPointMake(18.51, 35.73) controlPoint2: CGPointMake(19.85, 35.73)];
        [bezierPath addCurveToPoint: CGPointMake(24.14, 35.73) controlPoint1: CGPointMake(22.28, 35.73) controlPoint2: CGPointMake(23.36, 35.73)];
        [bezierPath addCurveToPoint: CGPointMake(25.4, 35.73) controlPoint1: CGPointMake(24.92, 35.73) controlPoint2: CGPointMake(25.4, 35.73)];
        [bezierPath addCurveToPoint: CGPointMake(26.19, 36.12) controlPoint1: CGPointMake(25.71, 35.73) controlPoint2: CGPointMake(26, 35.88)];
        [bezierPath addLineToPoint: CGPointMake(32.08, 43.8)];
        [bezierPath addLineToPoint: CGPointMake(43.36, 22.85)];
        [bezierPath addCurveToPoint: CGPointMake(44.24, 22.32) controlPoint1: CGPointMake(43.54, 22.52) controlPoint2: CGPointMake(43.87, 22.32)];
        [bezierPath addCurveToPoint: CGPointMake(44.28, 22.32) controlPoint1: CGPointMake(44.25, 22.32) controlPoint2: CGPointMake(44.27, 22.32)];
        [bezierPath addCurveToPoint: CGPointMake(45.16, 22.92) controlPoint1: CGPointMake(44.66, 22.34) controlPoint2: CGPointMake(45, 22.57)];
        [bezierPath addLineToPoint: CGPointMake(50.67, 35.38)];
        [bezierPath addLineToPoint: CGPointMake(57.19, 35.38)];
        [bezierPath addCurveToPoint: CGPointMake(58.11, 36) controlPoint1: CGPointMake(57.59, 35.38) controlPoint2: CGPointMake(57.96, 35.63)];
        [bezierPath addCurveToPoint: CGPointMake(57.89, 37.09) controlPoint1: CGPointMake(58.27, 36.37) controlPoint2: CGPointMake(58.18, 36.8)];
        [bezierPath addLineToPoint: CGPointMake(35.95, 59.03)];
        [bezierPath addCurveToPoint: CGPointMake(35.25, 59.33) controlPoint1: CGPointMake(35.76, 59.23) controlPoint2: CGPointMake(35.5, 59.33)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
