//
//  IconTravelView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconTravelView.h"

@implementation IconTravelView


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
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(9, 10.97, 52.3, 47.95)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(11.74, 56.63)];
            [bezierPath addCurveToPoint: CGPointMake(11.54, 56.62) controlPoint1: CGPointMake(11.68, 56.63) controlPoint2: CGPointMake(11.61, 56.63)];
            [bezierPath addCurveToPoint: CGPointMake(9.02, 54.12) controlPoint1: CGPointMake(9.93, 56.51) controlPoint2: CGPointMake(9.09, 55.74)];
            [bezierPath addCurveToPoint: CGPointMake(9.01, 51.86) controlPoint1: CGPointMake(8.98, 53.36) controlPoint2: CGPointMake(9.01, 52.61)];
            [bezierPath addCurveToPoint: CGPointMake(9.01, 20.48) controlPoint1: CGPointMake(9.01, 41.4) controlPoint2: CGPointMake(9.01, 30.94)];
            [bezierPath addCurveToPoint: CGPointMake(12.25, 17.29) controlPoint1: CGPointMake(9.01, 18.02) controlPoint2: CGPointMake(9.76, 17.29)];
            [bezierPath addCurveToPoint: CGPointMake(12.3, 17.29) controlPoint1: CGPointMake(12.27, 17.29) controlPoint2: CGPointMake(12.28, 17.29)];
            [bezierPath addCurveToPoint: CGPointMake(13.99, 17.3) controlPoint1: CGPointMake(12.86, 17.29) controlPoint2: CGPointMake(13.43, 17.3)];
            [bezierPath addCurveToPoint: CGPointMake(15.48, 17.32) controlPoint1: CGPointMake(14.49, 17.31) controlPoint2: CGPointMake(14.98, 17.32)];
            [bezierPath addLineToPoint: CGPointMake(15.48, 19.42)];
            [bezierPath addCurveToPoint: CGPointMake(15.46, 19.42) controlPoint1: CGPointMake(15.47, 19.42) controlPoint2: CGPointMake(15.47, 19.42)];
            [bezierPath addCurveToPoint: CGPointMake(13.38, 19.43) controlPoint1: CGPointMake(14.77, 19.42) controlPoint2: CGPointMake(14.07, 19.43)];
            [bezierPath addCurveToPoint: CGPointMake(12.07, 19.42) controlPoint1: CGPointMake(12.94, 19.43) controlPoint2: CGPointMake(12.51, 19.43)];
            [bezierPath addCurveToPoint: CGPointMake(12.02, 19.42) controlPoint1: CGPointMake(12.06, 19.42) controlPoint2: CGPointMake(12.04, 19.42)];
            [bezierPath addCurveToPoint: CGPointMake(11.17, 20.29) controlPoint1: CGPointMake(11.43, 19.42) controlPoint2: CGPointMake(11.14, 19.67)];
            [bezierPath addCurveToPoint: CGPointMake(11.17, 21.3) controlPoint1: CGPointMake(11.18, 20.63) controlPoint2: CGPointMake(11.17, 20.96)];
            [bezierPath addCurveToPoint: CGPointMake(11.17, 52.54) controlPoint1: CGPointMake(11.16, 31.71) controlPoint2: CGPointMake(11.16, 42.13)];
            [bezierPath addCurveToPoint: CGPointMake(11.94, 54.43) controlPoint1: CGPointMake(11.17, 54.16) controlPoint2: CGPointMake(11.16, 54.4)];
            [bezierPath addLineToPoint: CGPointMake(11.94, 56.62)];
            [bezierPath addCurveToPoint: CGPointMake(11.74, 56.63) controlPoint1: CGPointMake(11.88, 56.63) controlPoint2: CGPointMake(11.81, 56.63)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(21.62, 46.17)];
            [bezierPath addLineToPoint: CGPointMake(21.62, 44.88)];
            [bezierPath addCurveToPoint: CGPointMake(21.65, 45.36) controlPoint1: CGPointMake(21.63, 45.04) controlPoint2: CGPointMake(21.64, 45.2)];
            [bezierPath addCurveToPoint: CGPointMake(21.62, 46.17) controlPoint1: CGPointMake(21.66, 45.65) controlPoint2: CGPointMake(21.66, 45.92)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(21.62, 20.56)];
            [bezierPath addLineToPoint: CGPointMake(21.62, 19.48)];
            [bezierPath addLineToPoint: CGPointMake(21.85, 19.48)];
            [bezierPath addCurveToPoint: CGPointMake(21.62, 20.56) controlPoint1: CGPointMake(21.75, 19.84) controlPoint2: CGPointMake(21.64, 20.2)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(18.53, 17.24)];
            [bezierPath addLineToPoint: CGPointMake(18.46, 17.24)];
            [bezierPath addCurveToPoint: CGPointMake(18.5, 17.24) controlPoint1: CGPointMake(18.47, 17.24) controlPoint2: CGPointMake(18.48, 17.24)];
            [bezierPath addCurveToPoint: CGPointMake(18.53, 17.24) controlPoint1: CGPointMake(18.51, 17.24) controlPoint2: CGPointMake(18.52, 17.24)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
            [bezier2Path moveToPoint: CGPointMake(59.43, 56.59)];
            [bezier2Path addLineToPoint: CGPointMake(59.43, 54.39)];
            [bezier2Path addLineToPoint: CGPointMake(59.1, 54.39)];
            [bezier2Path addCurveToPoint: CGPointMake(59.16, 53.01) controlPoint1: CGPointMake(59.12, 53.9) controlPoint2: CGPointMake(59.16, 53.45)];
            [bezier2Path addCurveToPoint: CGPointMake(59.18, 20.88) controlPoint1: CGPointMake(59.16, 42.3) controlPoint2: CGPointMake(59.14, 31.59)];
            [bezier2Path addCurveToPoint: CGPointMake(57.91, 19.39) controlPoint1: CGPointMake(59.19, 19.81) controlPoint2: CGPointMake(58.94, 19.39)];
            [bezier2Path addCurveToPoint: CGPointMake(57.73, 19.4) controlPoint1: CGPointMake(57.85, 19.39) controlPoint2: CGPointMake(57.79, 19.39)];
            [bezier2Path addCurveToPoint: CGPointMake(56.11, 19.44) controlPoint1: CGPointMake(57.19, 19.42) controlPoint2: CGPointMake(56.65, 19.43)];
            [bezier2Path addLineToPoint: CGPointMake(56.11, 17.28)];
            [bezier2Path addCurveToPoint: CGPointMake(58.6, 17.29) controlPoint1: CGPointMake(56.94, 17.28) controlPoint2: CGPointMake(57.77, 17.29)];
            [bezier2Path addCurveToPoint: CGPointMake(61.31, 19.98) controlPoint1: CGPointMake(60.43, 17.31) controlPoint2: CGPointMake(61.31, 18.18)];
            [bezier2Path addCurveToPoint: CGPointMake(61.29, 53.86) controlPoint1: CGPointMake(61.32, 31.27) controlPoint2: CGPointMake(61.32, 42.56)];
            [bezier2Path addCurveToPoint: CGPointMake(60.78, 55.73) controlPoint1: CGPointMake(61.29, 54.49) controlPoint2: CGPointMake(61.11, 55.2)];
            [bezier2Path addCurveToPoint: CGPointMake(59.43, 56.59) controlPoint1: CGPointMake(60.45, 56.26) controlPoint2: CGPointMake(59.96, 56.54)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(48.3, 44.76)];
            [bezier2Path addCurveToPoint: CGPointMake(48.3, 44.67) controlPoint1: CGPointMake(48.3, 44.73) controlPoint2: CGPointMake(48.3, 44.7)];
            [bezier2Path addLineToPoint: CGPointMake(48.3, 44.76)];
            [bezier2Path closePath];
            [bezier2Path moveToPoint: CGPointMake(50.56, 19.79)];
            [bezier2Path addLineToPoint: CGPointMake(50.56, 19.48)];
            [bezier2Path addLineToPoint: CGPointMake(50.58, 19.48)];
            [bezier2Path addCurveToPoint: CGPointMake(50.56, 19.79) controlPoint1: CGPointMake(50.57, 19.59) controlPoint2: CGPointMake(50.56, 19.69)];
            [bezier2Path closePath];
            [fillColor setFill];
            [bezier2Path fill];
            
            
            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
            [bezier3Path moveToPoint: CGPointMake(17, 59)];
            [bezier3Path addCurveToPoint: CGPointMake(16.03, 58.26) controlPoint1: CGPointMake(16.69, 59) controlPoint2: CGPointMake(16.01, 58.48)];
            [bezier3Path addCurveToPoint: CGPointMake(15.19, 56.63) controlPoint1: CGPointMake(16.12, 57.22) controlPoint2: CGPointMake(15.77, 56.78)];
            [bezier3Path addLineToPoint: CGPointMake(18.94, 56.63)];
            [bezier3Path addCurveToPoint: CGPointMake(18.02, 57.98) controlPoint1: CGPointMake(18.33, 56.71) controlPoint2: CGPointMake(17.95, 56.99)];
            [bezier3Path addCurveToPoint: CGPointMake(17.05, 58.99) controlPoint1: CGPointMake(18.05, 58.31) controlPoint2: CGPointMake(17.45, 58.88)];
            [bezier3Path addCurveToPoint: CGPointMake(17, 59) controlPoint1: CGPointMake(17.03, 59) controlPoint2: CGPointMake(17.01, 59)];
            [bezier3Path closePath];
            [bezier3Path moveToPoint: CGPointMake(53.32, 59)];
            [bezier3Path addCurveToPoint: CGPointMake(53.3, 59) controlPoint1: CGPointMake(53.32, 59) controlPoint2: CGPointMake(53.31, 59)];
            [bezier3Path addCurveToPoint: CGPointMake(52.39, 58.11) controlPoint1: CGPointMake(52.97, 58.98) controlPoint2: CGPointMake(52.37, 58.41)];
            [bezier3Path addCurveToPoint: CGPointMake(51.36, 56.63) controlPoint1: CGPointMake(52.45, 57.05) controlPoint2: CGPointMake(52.05, 56.73)];
            [bezier3Path addLineToPoint: CGPointMake(54.58, 56.63)];
            [bezier3Path addCurveToPoint: CGPointMake(54.36, 58.21) controlPoint1: CGPointMake(54.52, 57.28) controlPoint2: CGPointMake(54.57, 57.82)];
            [bezier3Path addCurveToPoint: CGPointMake(53.32, 59) controlPoint1: CGPointMake(54.17, 58.57) controlPoint2: CGPointMake(53.67, 59)];
            [bezier3Path closePath];
            [bezier3Path moveToPoint: CGPointMake(48.3, 54.39)];
            [bezier3Path addLineToPoint: CGPointMake(47.81, 54.39)];
            [bezier3Path addCurveToPoint: CGPointMake(48.3, 53.87) controlPoint1: CGPointMake(48.06, 54.3) controlPoint2: CGPointMake(48.22, 54.14)];
            [bezier3Path addLineToPoint: CGPointMake(48.3, 54.39)];
            [bezier3Path closePath];
            [bezier3Path moveToPoint: CGPointMake(22.17, 54.39)];
            [bezier3Path addLineToPoint: CGPointMake(21.62, 54.39)];
            [bezier3Path addLineToPoint: CGPointMake(21.62, 53.73)];
            [bezier3Path addCurveToPoint: CGPointMake(22.17, 54.39) controlPoint1: CGPointMake(21.7, 54.06) controlPoint2: CGPointMake(21.86, 54.28)];
            [bezier3Path closePath];
            [bezier3Path moveToPoint: CGPointMake(19.36, 54.39)];
            [bezier3Path addLineToPoint: CGPointMake(19.34, 54.39)];
            [bezier3Path addCurveToPoint: CGPointMake(19.36, 54.12) controlPoint1: CGPointMake(19.35, 54.3) controlPoint2: CGPointMake(19.36, 54.21)];
            [bezier3Path addLineToPoint: CGPointMake(19.36, 54.39)];
            [bezier3Path closePath];
            [bezier3Path moveToPoint: CGPointMake(21.62, 51.75)];
            [bezier3Path addLineToPoint: CGPointMake(21.62, 50.36)];
            [bezier3Path addCurveToPoint: CGPointMake(21.62, 51.75) controlPoint1: CGPointMake(21.63, 50.82) controlPoint2: CGPointMake(21.63, 51.29)];
            [bezier3Path closePath];
            [fillColor setFill];
            [bezier3Path fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = UIBezierPath.bezierPath;
        [bezier4Path moveToPoint: CGPointMake(24.82, 19.48)];
        [bezier4Path addCurveToPoint: CGPointMake(24.79, 19.48) controlPoint1: CGPointMake(24.81, 19.48) controlPoint2: CGPointMake(24.8, 19.48)];
        [bezier4Path addLineToPoint: CGPointMake(24.86, 19.48)];
        [bezier4Path addCurveToPoint: CGPointMake(24.82, 19.48) controlPoint1: CGPointMake(24.85, 19.48) controlPoint2: CGPointMake(24.83, 19.48)];
        [bezier4Path closePath];
        [bezier4Path moveToPoint: CGPointMake(44.31, 17.24)];
        [bezier4Path addLineToPoint: CGPointMake(40.42, 17.24)];
        [bezier4Path addCurveToPoint: CGPointMake(41.65, 14.14) controlPoint1: CGPointMake(41.73, 17.09) controlPoint2: CGPointMake(41.7, 16.51)];
        [bezier4Path addCurveToPoint: CGPointMake(40.58, 13.08) controlPoint1: CGPointMake(41.63, 13.31) controlPoint2: CGPointMake(41.34, 13.08)];
        [bezier4Path addCurveToPoint: CGPointMake(40.54, 13.08) controlPoint1: CGPointMake(40.57, 13.08) controlPoint2: CGPointMake(40.56, 13.08)];
        [bezier4Path addCurveToPoint: CGPointMake(38.22, 13.09) controlPoint1: CGPointMake(39.77, 13.09) controlPoint2: CGPointMake(38.99, 13.09)];
        [bezier4Path addCurveToPoint: CGPointMake(36.21, 13.09) controlPoint1: CGPointMake(37.55, 13.09) controlPoint2: CGPointMake(36.88, 13.09)];
        [bezier4Path addCurveToPoint: CGPointMake(34.21, 13.09) controlPoint1: CGPointMake(35.54, 13.09) controlPoint2: CGPointMake(34.88, 13.09)];
        [bezier4Path addCurveToPoint: CGPointMake(31.16, 13.11) controlPoint1: CGPointMake(33.19, 13.09) controlPoint2: CGPointMake(32.17, 13.09)];
        [bezier4Path addCurveToPoint: CGPointMake(30.82, 13.11) controlPoint1: CGPointMake(31.04, 13.11) controlPoint2: CGPointMake(30.92, 13.11)];
        [bezier4Path addCurveToPoint: CGPointMake(29.88, 13.09) controlPoint1: CGPointMake(30.46, 13.11) controlPoint2: CGPointMake(30.15, 13.1)];
        [bezier4Path addCurveToPoint: CGPointMake(29.21, 13.07) controlPoint1: CGPointMake(29.62, 13.08) controlPoint2: CGPointMake(29.4, 13.07)];
        [bezier4Path addCurveToPoint: CGPointMake(28.24, 16.12) controlPoint1: CGPointMake(28.05, 13.07) controlPoint2: CGPointMake(28.3, 13.4)];
        [bezier4Path addCurveToPoint: CGPointMake(28.83, 17.24) controlPoint1: CGPointMake(28.23, 16.79) controlPoint2: CGPointMake(28.41, 17.11)];
        [bezier4Path addLineToPoint: CGPointMake(25.68, 17.24)];
        [bezier4Path addCurveToPoint: CGPointMake(26.21, 16.06) controlPoint1: CGPointMake(26.11, 17.09) controlPoint2: CGPointMake(26.25, 16.71)];
        [bezier4Path addCurveToPoint: CGPointMake(26.2, 13.31) controlPoint1: CGPointMake(26.16, 15.15) controlPoint2: CGPointMake(26.16, 14.23)];
        [bezier4Path addCurveToPoint: CGPointMake(28.55, 11) controlPoint1: CGPointMake(26.26, 11.73) controlPoint2: CGPointMake(26.99, 11.01)];
        [bezier4Path addCurveToPoint: CGPointMake(34.97, 10.99) controlPoint1: CGPointMake(30.69, 10.99) controlPoint2: CGPointMake(32.83, 10.99)];
        [bezier4Path addCurveToPoint: CGPointMake(41.46, 11) controlPoint1: CGPointMake(37.13, 10.99) controlPoint2: CGPointMake(39.3, 10.99)];
        [bezier4Path addCurveToPoint: CGPointMake(43.76, 13.24) controlPoint1: CGPointMake(42.93, 11.01) controlPoint2: CGPointMake(43.69, 11.77)];
        [bezier4Path addCurveToPoint: CGPointMake(43.76, 16) controlPoint1: CGPointMake(43.8, 14.16) controlPoint2: CGPointMake(43.82, 15.08)];
        [bezier4Path addCurveToPoint: CGPointMake(44.31, 17.24) controlPoint1: CGPointMake(43.71, 16.68) controlPoint2: CGPointMake(43.85, 17.09)];
        [bezier4Path closePath];
        [fillColor setFill];
        [bezier4Path fill];
        
        
        //// Bezier 5 Drawing
        UIBezierPath* bezier5Path = UIBezierPath.bezierPath;
        [bezier5Path moveToPoint: CGPointMake(56.11, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(50.56, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(50.56, 18.93)];
        [bezier5Path addLineToPoint: CGPointMake(48.3, 18.93)];
        [bezier5Path addLineToPoint: CGPointMake(48.3, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(21.62, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(21.62, 18.93)];
        [bezier5Path addLineToPoint: CGPointMake(19.36, 18.93)];
        [bezier5Path addLineToPoint: CGPointMake(19.36, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(15.48, 19.48)];
        [bezier5Path addLineToPoint: CGPointMake(15.48, 17.24)];
        [bezier5Path addLineToPoint: CGPointMake(56.11, 17.24)];
        [bezier5Path addLineToPoint: CGPointMake(56.11, 19.48)];
        [bezier5Path closePath];
        [fillColor setFill];
        [bezier5Path fill];
        
        
        //// Bezier 6 Drawing
        UIBezierPath* bezier6Path = UIBezierPath.bezierPath;
        [bezier6Path moveToPoint: CGPointMake(59.43, 56.63)];
        [bezier6Path addLineToPoint: CGPointMake(11.94, 56.63)];
        [bezier6Path addLineToPoint: CGPointMake(11.94, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(19.36, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(19.36, 55.51)];
        [bezier6Path addLineToPoint: CGPointMake(21.62, 55.51)];
        [bezier6Path addLineToPoint: CGPointMake(21.62, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(48.3, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(48.3, 55.51)];
        [bezier6Path addLineToPoint: CGPointMake(50.56, 55.51)];
        [bezier6Path addLineToPoint: CGPointMake(50.56, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(59.43, 54.39)];
        [bezier6Path addLineToPoint: CGPointMake(59.43, 56.63)];
        [bezier6Path closePath];
        [fillColor setFill];
        [bezier6Path fill];
        
        
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(48.33, 18.9, 2.25, 36.6)];
        [fillColor setFill];
        [rectangle2Path fill];
        
        
        //// Rectangle 3 Drawing
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(19.38, 18.9, 2.25, 36.6)];
        [fillColor setFill];
        [rectangle3Path fill];
    }

}


@end
