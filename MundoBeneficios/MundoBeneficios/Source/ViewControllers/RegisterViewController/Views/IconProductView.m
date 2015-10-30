//
//  IconProductView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "IconProductView.h"

@implementation IconProductView


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
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(15, 14.97, 24.5, 23.95)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(27.08, 38.5)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 33.46)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 20.62)];
        [bezierPath addLineToPoint: CGPointMake(27.08, 15.5)];
        [bezierPath addLineToPoint: CGPointMake(38.5, 20.72)];
        [bezierPath addLineToPoint: CGPointMake(38.5, 33.73)];
        [bezierPath addLineToPoint: CGPointMake(27.08, 38.5)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(38.98, 20.95)];
        [bezierPath addLineToPoint: CGPointMake(28, 25.68)];
        [bezierPath addLineToPoint: CGPointMake(27.76, 38.5)];
        [bezierPath moveToPoint: CGPointMake(28, 25.68)];
        [bezierPath addLineToPoint: CGPointMake(16.37, 20.72)];
        [bezierPath moveToPoint: CGPointMake(33.88, 23.15)];
        [bezierPath addLineToPoint: CGPointMake(23.24, 17.64)];
        bezierPath.lineCapStyle = kCGLineCapRound;
        
        bezierPath.lineJoinStyle = kCGLineJoinRound;
        
        [strokeColor setStroke];
        bezierPath.lineWidth = 1;
        [bezierPath stroke];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}


@end
