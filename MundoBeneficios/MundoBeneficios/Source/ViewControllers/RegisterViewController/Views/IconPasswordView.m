//
//  IconPasswordView.m
//  myments
//
//  Created by Raul Quispe on 10/28/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconPasswordView.h"

@implementation IconPasswordView


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
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(17, 16, 21.95, 23.5)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(38.92, 39.55)];
            [bezierPath addLineToPoint: CGPointMake(16.93, 39.55)];
            [bezierPath addLineToPoint: CGPointMake(16.93, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(20.93, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(20.93, 25.53)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 25.53)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 25.53)];
            [bezierPath addLineToPoint: CGPointMake(34.92, 25.53)];
            [bezierPath addLineToPoint: CGPointMake(34.92, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(38.92, 24.53)];
            [bezierPath addLineToPoint: CGPointMake(38.92, 39.55)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(18.93, 37.55)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 37.55)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 26.53)];
            [bezierPath addLineToPoint: CGPointMake(18.93, 26.53)];
            [bezierPath addLineToPoint: CGPointMake(18.93, 37.55)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(34.92, 25.53)];
        [bezier2Path addLineToPoint: CGPointMake(32.92, 25.53)];
        [bezier2Path addLineToPoint: CGPointMake(32.92, 22.96)];
        [bezier2Path addCurveToPoint: CGPointMake(31.46, 19.47) controlPoint1: CGPointMake(32.92, 21.6) controlPoint2: CGPointMake(32.37, 20.37)];
        [bezier2Path addCurveToPoint: CGPointMake(27.93, 18.01) controlPoint1: CGPointMake(30.55, 18.57) controlPoint2: CGPointMake(29.31, 18.01)];
        [bezier2Path addCurveToPoint: CGPointMake(24.39, 19.47) controlPoint1: CGPointMake(26.54, 18.01) controlPoint2: CGPointMake(25.3, 18.57)];
        [bezier2Path addCurveToPoint: CGPointMake(22.93, 22.96) controlPoint1: CGPointMake(23.48, 20.37) controlPoint2: CGPointMake(22.93, 21.6)];
        [bezier2Path addLineToPoint: CGPointMake(22.93, 25.53)];
        [bezier2Path addLineToPoint: CGPointMake(20.93, 25.53)];
        [bezier2Path addLineToPoint: CGPointMake(20.93, 22.96)];
        [bezier2Path addCurveToPoint: CGPointMake(27.93, 16.01) controlPoint1: CGPointMake(20.93, 19.12) controlPoint2: CGPointMake(24.07, 16.01)];
        [bezier2Path addCurveToPoint: CGPointMake(34.92, 22.96) controlPoint1: CGPointMake(31.78, 16.01) controlPoint2: CGPointMake(34.92, 19.12)];
        [bezier2Path addLineToPoint: CGPointMake(34.92, 25.53)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
        
        
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(26.93, 29.65, 2, 4.8)];
        [fillColor setFill];
        [rectangle2Path fill];
    }

}


@end
