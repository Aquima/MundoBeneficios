//
//  IconDateView.m
//  myments
//
//  Created by Raul Quispe on 10/28/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconDateView.h"

@implementation IconDateView


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
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(17, 18, 20.95, 18.95)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(37.92, 37.03)];
            [bezierPath addLineToPoint: CGPointMake(16.93, 37.03)];
            [bezierPath addLineToPoint: CGPointMake(16.93, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(21.93, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(21.93, 18.03)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 18.03)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(31.93, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(31.93, 18.03)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 18.03)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(37.92, 19.03)];
            [bezierPath addLineToPoint: CGPointMake(37.92, 37.03)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(17.93, 36.03)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 36.03)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 24.03)];
            [bezierPath addLineToPoint: CGPointMake(17.93, 24.03)];
            [bezierPath addLineToPoint: CGPointMake(17.93, 36.03)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(17.93, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(17.93, 23.03)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 23.03)];
            [bezierPath addLineToPoint: CGPointMake(36.92, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(32.92, 21.03)];
            [bezierPath addLineToPoint: CGPointMake(31.93, 21.03)];
            [bezierPath addLineToPoint: CGPointMake(31.93, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(22.93, 21.03)];
            [bezierPath addLineToPoint: CGPointMake(21.93, 21.03)];
            [bezierPath addLineToPoint: CGPointMake(21.93, 20.03)];
            [bezierPath addLineToPoint: CGPointMake(17.93, 20.03)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(27.93, 34.03)];
        [bezier2Path addLineToPoint: CGPointMake(26.93, 34.03)];
        [bezier2Path addLineToPoint: CGPointMake(26.93, 27.03)];
        [bezier2Path addLineToPoint: CGPointMake(26.45, 27.03)];
        [bezier2Path addLineToPoint: CGPointMake(25.25, 27.72)];
        [bezier2Path addLineToPoint: CGPointMake(25.07, 27.06)];
        [bezier2Path addLineToPoint: CGPointMake(26.58, 26.03)];
        [bezier2Path addLineToPoint: CGPointMake(27.93, 26.03)];
        [bezier2Path addLineToPoint: CGPointMake(27.93, 34.03)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
    }


}


@end
