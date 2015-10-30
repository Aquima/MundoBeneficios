//
//  IconEmailView.m
//  myments
//
//  Created by Raul Quispe on 10/28/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconEmailView.h"

@implementation IconEmailView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(16, 20, 23.85, 18.95)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(17.6, 21.03)];
        [bezierPath addLineToPoint: CGPointMake(38.6, 21.03)];
        [bezierPath addLineToPoint: CGPointMake(38.6, 38.03)];
        [bezierPath addLineToPoint: CGPointMake(17.6, 38.03)];
        [bezierPath addLineToPoint: CGPointMake(17.6, 21.03)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(27.94, 30.53)];
        [bezierPath addLineToPoint: CGPointMake(18.44, 21.03)];
        [bezierPath addLineToPoint: CGPointMake(37.44, 21.03)];
        [bezierPath addLineToPoint: CGPointMake(27.94, 30.53)];
        [bezierPath closePath];
        [strokeColor setStroke];
        bezierPath.lineWidth = 2;
        [bezierPath stroke];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
