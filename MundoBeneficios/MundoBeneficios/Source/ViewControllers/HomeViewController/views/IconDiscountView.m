//
//  IconDiscountView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconDiscountView.h"

@implementation IconDiscountView


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
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(11, 10.27, 48.3, 48.65)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(12.95, 59)];
        [bezierPath addCurveToPoint: CGPointMake(12.74, 58.99) controlPoint1: CGPointMake(12.88, 59) controlPoint2: CGPointMake(12.81, 59)];
        [bezierPath addCurveToPoint: CGPointMake(11.02, 56.9) controlPoint1: CGPointMake(11.66, 58.9) controlPoint2: CGPointMake(10.88, 57.96)];
        [bezierPath addCurveToPoint: CGPointMake(12.42, 46.19) controlPoint1: CGPointMake(11.48, 53.33) controlPoint2: CGPointMake(11.95, 49.76)];
        [bezierPath addCurveToPoint: CGPointMake(14.09, 33.56) controlPoint1: CGPointMake(12.97, 41.98) controlPoint2: CGPointMake(13.53, 37.77)];
        [bezierPath addCurveToPoint: CGPointMake(15.79, 20.7) controlPoint1: CGPointMake(14.66, 29.28) controlPoint2: CGPointMake(15.21, 24.99)];
        [bezierPath addCurveToPoint: CGPointMake(18.28, 18.55) controlPoint1: CGPointMake(15.98, 19.23) controlPoint2: CGPointMake(16.8, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(18.28, 18.55) controlPoint1: CGPointMake(18.28, 18.55) controlPoint2: CGPointMake(18.28, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(22.18, 18.55) controlPoint1: CGPointMake(19.58, 18.55) controlPoint2: CGPointMake(20.88, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(26.53, 18.55) controlPoint1: CGPointMake(23.63, 18.55) controlPoint2: CGPointMake(25.08, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(27.05, 18.52) controlPoint1: CGPointMake(26.7, 18.55) controlPoint2: CGPointMake(26.87, 18.53)];
        [bezierPath addCurveToPoint: CGPointMake(27.07, 18.15) controlPoint1: CGPointMake(27.06, 18.36) controlPoint2: CGPointMake(27.07, 18.26)];
        [bezierPath addCurveToPoint: CGPointMake(32.68, 10.59) controlPoint1: CGPointMake(27.2, 14.58) controlPoint2: CGPointMake(29.29, 11.77)];
        [bezierPath addCurveToPoint: CGPointMake(35.14, 10.27) controlPoint1: CGPointMake(32.78, 10.56) controlPoint2: CGPointMake(33.8, 10.27)];
        [bezierPath addCurveToPoint: CGPointMake(37.75, 10.64) controlPoint1: CGPointMake(36.5, 10.27) controlPoint2: CGPointMake(37.6, 10.59)];
        [bezierPath addCurveToPoint: CGPointMake(43.07, 16.74) controlPoint1: CGPointMake(40.62, 11.71) controlPoint2: CGPointMake(42.41, 13.75)];
        [bezierPath addCurveToPoint: CGPointMake(43.28, 18.55) controlPoint1: CGPointMake(43.2, 17.31) controlPoint2: CGPointMake(43.21, 17.92)];
        [bezierPath addCurveToPoint: CGPointMake(43.91, 18.55) controlPoint1: CGPointMake(43.5, 18.55) controlPoint2: CGPointMake(43.7, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(49.31, 18.55) controlPoint1: CGPointMake(45.7, 18.55) controlPoint2: CGPointMake(47.51, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(52.15, 18.55) controlPoint1: CGPointMake(50.26, 18.55) controlPoint2: CGPointMake(51.2, 18.55)];
        [bezierPath addCurveToPoint: CGPointMake(54.47, 20.37) controlPoint1: CGPointMake(53.37, 18.55) controlPoint2: CGPointMake(54.3, 19.27)];
        [bezierPath addCurveToPoint: CGPointMake(54.86, 23.33) controlPoint1: CGPointMake(54.62, 21.35) controlPoint2: CGPointMake(54.73, 22.34)];
        [bezierPath addCurveToPoint: CGPointMake(56.23, 33.8) controlPoint1: CGPointMake(55.32, 26.82) controlPoint2: CGPointMake(55.78, 30.31)];
        [bezierPath addCurveToPoint: CGPointMake(57.72, 45.02) controlPoint1: CGPointMake(56.73, 37.54) controlPoint2: CGPointMake(57.22, 41.28)];
        [bezierPath addCurveToPoint: CGPointMake(59, 54.79) controlPoint1: CGPointMake(58.14, 48.28) controlPoint2: CGPointMake(58.57, 51.53)];
        [bezierPath addCurveToPoint: CGPointMake(59.28, 56.95) controlPoint1: CGPointMake(59.1, 55.51) controlPoint2: CGPointMake(59.2, 56.23)];
        [bezierPath addCurveToPoint: CGPointMake(57.21, 59) controlPoint1: CGPointMake(59.4, 58.12) controlPoint2: CGPointMake(58.51, 59)];
        [bezierPath addCurveToPoint: CGPointMake(31.39, 59) controlPoint1: CGPointMake(48.61, 59) controlPoint2: CGPointMake(39.99, 59)];
        [bezierPath addCurveToPoint: CGPointMake(13.12, 59) controlPoint1: CGPointMake(25.3, 59) controlPoint2: CGPointMake(19.21, 59)];
        [bezierPath addCurveToPoint: CGPointMake(12.95, 59) controlPoint1: CGPointMake(13.06, 59) controlPoint2: CGPointMake(13.01, 59)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(13.56, 52.97)];
        [bezierPath addCurveToPoint: CGPointMake(13.03, 56.96) controlPoint1: CGPointMake(13.38, 54.31) controlPoint2: CGPointMake(13.21, 55.62)];
        [bezierPath addCurveToPoint: CGPointMake(57.31, 56.96) controlPoint1: CGPointMake(27.83, 56.96) controlPoint2: CGPointMake(42.54, 56.96)];
        [bezierPath addCurveToPoint: CGPointMake(56.78, 52.97) controlPoint1: CGPointMake(57.13, 55.6) controlPoint2: CGPointMake(56.95, 54.28)];
        [bezierPath addCurveToPoint: CGPointMake(13.56, 52.97) controlPoint1: CGPointMake(42.34, 52.97) controlPoint2: CGPointMake(27.95, 52.97)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(18.25, 20.56)];
        [bezierPath addCurveToPoint: CGPointMake(17.76, 21.02) controlPoint1: CGPointMake(17.9, 20.56) controlPoint2: CGPointMake(17.8, 20.69)];
        [bezierPath addCurveToPoint: CGPointMake(16.98, 26.94) controlPoint1: CGPointMake(17.51, 22.99) controlPoint2: CGPointMake(17.24, 24.96)];
        [bezierPath addCurveToPoint: CGPointMake(15.61, 37.31) controlPoint1: CGPointMake(16.52, 30.39) controlPoint2: CGPointMake(16.07, 33.85)];
        [bezierPath addCurveToPoint: CGPointMake(14.23, 47.83) controlPoint1: CGPointMake(15.15, 40.82) controlPoint2: CGPointMake(14.69, 44.33)];
        [bezierPath addCurveToPoint: CGPointMake(13.83, 50.9) controlPoint1: CGPointMake(14.1, 48.84) controlPoint2: CGPointMake(13.97, 49.86)];
        [bezierPath addCurveToPoint: CGPointMake(56.47, 50.9) controlPoint1: CGPointMake(28.07, 50.9) controlPoint2: CGPointMake(42.26, 50.9)];
        [bezierPath addCurveToPoint: CGPointMake(56.47, 50.61) controlPoint1: CGPointMake(56.47, 50.79) controlPoint2: CGPointMake(56.48, 50.7)];
        [bezierPath addCurveToPoint: CGPointMake(55.2, 41.08) controlPoint1: CGPointMake(56.05, 47.43) controlPoint2: CGPointMake(55.62, 44.25)];
        [bezierPath addCurveToPoint: CGPointMake(53.93, 31.55) controlPoint1: CGPointMake(54.77, 37.9) controlPoint2: CGPointMake(54.35, 34.72)];
        [bezierPath addCurveToPoint: CGPointMake(52.54, 21.03) controlPoint1: CGPointMake(53.46, 28.04) controlPoint2: CGPointMake(52.99, 24.54)];
        [bezierPath addCurveToPoint: CGPointMake(52.02, 20.56) controlPoint1: CGPointMake(52.49, 20.66) controlPoint2: CGPointMake(52.37, 20.56)];
        [bezierPath addCurveToPoint: CGPointMake(52.01, 20.56) controlPoint1: CGPointMake(52.01, 20.56) controlPoint2: CGPointMake(52.01, 20.56)];
        [bezierPath addCurveToPoint: CGPointMake(48, 20.57) controlPoint1: CGPointMake(50.67, 20.57) controlPoint2: CGPointMake(49.34, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(46.22, 20.57) controlPoint1: CGPointMake(47.41, 20.57) controlPoint2: CGPointMake(46.81, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(44.44, 20.57) controlPoint1: CGPointMake(45.62, 20.57) controlPoint2: CGPointMake(45.03, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(43.67, 20.57) controlPoint1: CGPointMake(44.18, 20.57) controlPoint2: CGPointMake(43.92, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(43.28, 20.6) controlPoint1: CGPointMake(43.53, 20.57) controlPoint2: CGPointMake(43.39, 20.59)];
        [bezierPath addLineToPoint: CGPointMake(43.23, 20.73)];
        [bezierPath addCurveToPoint: CGPointMake(43.21, 24.76) controlPoint1: CGPointMake(43.23, 22.08) controlPoint2: CGPointMake(43.24, 23.42)];
        [bezierPath addCurveToPoint: CGPointMake(43.66, 25.46) controlPoint1: CGPointMake(43.21, 25.13) controlPoint2: CGPointMake(43.3, 25.31)];
        [bezierPath addCurveToPoint: CGPointMake(45.61, 29.66) controlPoint1: CGPointMake(45.31, 26.19) controlPoint2: CGPointMake(46.12, 27.97)];
        [bezierPath addCurveToPoint: CGPointMake(42.19, 32.18) controlPoint1: CGPointMake(45.15, 31.2) controlPoint2: CGPointMake(43.8, 32.18)];
        [bezierPath addCurveToPoint: CGPointMake(41.97, 32.18) controlPoint1: CGPointMake(42.12, 32.18) controlPoint2: CGPointMake(42.04, 32.18)];
        [bezierPath addCurveToPoint: CGPointMake(38.76, 29.35) controlPoint1: CGPointMake(40.42, 32.09) controlPoint2: CGPointMake(39.04, 30.87)];
        [bezierPath addCurveToPoint: CGPointMake(40.83, 25.45) controlPoint1: CGPointMake(38.46, 27.69) controlPoint2: CGPointMake(39.28, 26.1)];
        [bezierPath addCurveToPoint: CGPointMake(41.23, 24.82) controlPoint1: CGPointMake(41.16, 25.31) controlPoint2: CGPointMake(41.24, 25.14)];
        [bezierPath addCurveToPoint: CGPointMake(41.22, 23.02) controlPoint1: CGPointMake(41.21, 24.22) controlPoint2: CGPointMake(41.22, 23.62)];
        [bezierPath addCurveToPoint: CGPointMake(41.22, 20.6) controlPoint1: CGPointMake(41.22, 22.22) controlPoint2: CGPointMake(41.22, 21.42)];
        [bezierPath addCurveToPoint: CGPointMake(29.07, 20.6) controlPoint1: CGPointMake(37.15, 20.6) controlPoint2: CGPointMake(33.13, 20.6)];
        [bezierPath addCurveToPoint: CGPointMake(29.06, 24.75) controlPoint1: CGPointMake(29.07, 22.01) controlPoint2: CGPointMake(29.08, 23.38)];
        [bezierPath addCurveToPoint: CGPointMake(29.52, 25.48) controlPoint1: CGPointMake(29.06, 25.12) controlPoint2: CGPointMake(29.14, 25.31)];
        [bezierPath addCurveToPoint: CGPointMake(31.39, 29.83) controlPoint1: CGPointMake(31.2, 26.21) controlPoint2: CGPointMake(32, 28.12)];
        [bezierPath addCurveToPoint: CGPointMake(28.07, 32.19) controlPoint1: CGPointMake(30.88, 31.27) controlPoint2: CGPointMake(29.53, 32.19)];
        [bezierPath addCurveToPoint: CGPointMake(27.21, 32.08) controlPoint1: CGPointMake(27.79, 32.19) controlPoint2: CGPointMake(27.5, 32.15)];
        [bezierPath addCurveToPoint: CGPointMake(24.54, 28.98) controlPoint1: CGPointMake(25.76, 31.72) controlPoint2: CGPointMake(24.69, 30.47)];
        [bezierPath addCurveToPoint: CGPointMake(26.67, 25.45) controlPoint1: CGPointMake(24.4, 27.49) controlPoint2: CGPointMake(25.25, 26.05)];
        [bezierPath addCurveToPoint: CGPointMake(27.08, 24.83) controlPoint1: CGPointMake(26.98, 25.32) controlPoint2: CGPointMake(27.09, 25.16)];
        [bezierPath addCurveToPoint: CGPointMake(27.07, 22.13) controlPoint1: CGPointMake(27.06, 23.93) controlPoint2: CGPointMake(27.07, 23.03)];
        [bezierPath addCurveToPoint: CGPointMake(27.07, 20.61) controlPoint1: CGPointMake(27.07, 21.62) controlPoint2: CGPointMake(27.07, 21.12)];
        [bezierPath addCurveToPoint: CGPointMake(26.69, 20.57) controlPoint1: CGPointMake(26.9, 20.59) controlPoint2: CGPointMake(26.8, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(25.43, 20.57) controlPoint1: CGPointMake(26.27, 20.57) controlPoint2: CGPointMake(25.85, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(24.2, 20.57) controlPoint1: CGPointMake(25.02, 20.57) controlPoint2: CGPointMake(24.61, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(22.95, 20.57) controlPoint1: CGPointMake(23.79, 20.57) controlPoint2: CGPointMake(23.37, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(18.25, 20.56) controlPoint1: CGPointMake(21.39, 20.57) controlPoint2: CGPointMake(19.82, 20.57)];
        [bezierPath addCurveToPoint: CGPointMake(18.25, 20.56) controlPoint1: CGPointMake(18.25, 20.56) controlPoint2: CGPointMake(18.25, 20.56)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(41.19, 27.59)];
        [bezierPath addCurveToPoint: CGPointMake(40.89, 29.38) controlPoint1: CGPointMake(40.67, 28.16) controlPoint2: CGPointMake(40.57, 28.82)];
        [bezierPath addCurveToPoint: CGPointMake(42.23, 30.19) controlPoint1: CGPointMake(41.16, 29.89) controlPoint2: CGPointMake(41.68, 30.19)];
        [bezierPath addCurveToPoint: CGPointMake(42.48, 30.17) controlPoint1: CGPointMake(42.31, 30.19) controlPoint2: CGPointMake(42.39, 30.18)];
        [bezierPath addCurveToPoint: CGPointMake(43.74, 28.82) controlPoint1: CGPointMake(43.15, 30.05) controlPoint2: CGPointMake(43.65, 29.52)];
        [bezierPath addCurveToPoint: CGPointMake(43.25, 27.68) controlPoint1: CGPointMake(43.81, 28.32) controlPoint2: CGPointMake(43.61, 27.86)];
        [bezierPath addCurveToPoint: CGPointMake(42.28, 29.4) controlPoint1: CGPointMake(43.12, 29.03) controlPoint2: CGPointMake(42.92, 29.4)];
        [bezierPath addCurveToPoint: CGPointMake(42.26, 29.4) controlPoint1: CGPointMake(42.27, 29.4) controlPoint2: CGPointMake(42.27, 29.4)];
        [bezierPath addCurveToPoint: CGPointMake(41.61, 29.18) controlPoint1: CGPointMake(42.04, 29.4) controlPoint2: CGPointMake(41.79, 29.31)];
        [bezierPath addCurveToPoint: CGPointMake(41.19, 27.59) controlPoint1: CGPointMake(41.07, 28.8) controlPoint2: CGPointMake(41.27, 28.19)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(27.07, 27.58)];
        [bezierPath addCurveToPoint: CGPointMake(27.01, 29.76) controlPoint1: CGPointMake(26.33, 28.19) controlPoint2: CGPointMake(26.47, 29.26)];
        [bezierPath addCurveToPoint: CGPointMake(28.07, 30.18) controlPoint1: CGPointMake(27.31, 30.04) controlPoint2: CGPointMake(27.69, 30.18)];
        [bezierPath addCurveToPoint: CGPointMake(29.17, 29.7) controlPoint1: CGPointMake(28.47, 30.18) controlPoint2: CGPointMake(28.87, 30.02)];
        [bezierPath addCurveToPoint: CGPointMake(29.07, 27.61) controlPoint1: CGPointMake(29.74, 29.1) controlPoint2: CGPointMake(29.72, 28.18)];
        [bezierPath addCurveToPoint: CGPointMake(29.07, 28.38) controlPoint1: CGPointMake(29.07, 27.91) controlPoint2: CGPointMake(29.08, 28.15)];
        [bezierPath addCurveToPoint: CGPointMake(28.06, 29.41) controlPoint1: CGPointMake(29.04, 28.98) controlPoint2: CGPointMake(28.61, 29.41)];
        [bezierPath addCurveToPoint: CGPointMake(28.05, 29.41) controlPoint1: CGPointMake(28.06, 29.41) controlPoint2: CGPointMake(28.06, 29.41)];
        [bezierPath addCurveToPoint: CGPointMake(27.07, 28.36) controlPoint1: CGPointMake(27.5, 29.41) controlPoint2: CGPointMake(27.09, 28.97)];
        [bezierPath addCurveToPoint: CGPointMake(27.07, 27.58) controlPoint1: CGPointMake(27.07, 28.12) controlPoint2: CGPointMake(27.07, 27.89)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(35.14, 12.18)];
        [bezierPath addCurveToPoint: CGPointMake(31.94, 13.15) controlPoint1: CGPointMake(34.07, 12.18) controlPoint2: CGPointMake(32.99, 12.5)];
        [bezierPath addCurveToPoint: CGPointMake(29.06, 18.51) controlPoint1: CGPointMake(29.99, 14.35) controlPoint2: CGPointMake(29.08, 16.18)];
        [bezierPath addCurveToPoint: CGPointMake(41.23, 18.51) controlPoint1: CGPointMake(33.15, 18.51) controlPoint2: CGPointMake(37.17, 18.51)];
        [bezierPath addCurveToPoint: CGPointMake(38.31, 13.12) controlPoint1: CGPointMake(41.21, 16.16) controlPoint2: CGPointMake(40.29, 14.33)];
        [bezierPath addCurveToPoint: CGPointMake(35.14, 12.18) controlPoint1: CGPointMake(37.27, 12.49) controlPoint2: CGPointMake(36.2, 12.18)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
