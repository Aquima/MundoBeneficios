//
//  MenuButton.m
//  AwesomeApp
//
//  Created by Raul Quispe on 8/8/15.
//  Copyright (c) 2015 Jigs. All rights reserved.
//

#import "MenuButton.h"

@implementation MenuButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    //// Color Declarations
    UIColor* fillColor2 = [UIColor colorWithRed: 0.949 green: 0.946 blue: 0.939 alpha: 1];
    
    //// Group 2
    {
        //// Rectangle Drawing
        UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(11.2, 12.93, 17.6, 1.95)];
        [fillColor2 setFill];
        [rectanglePath fill];
        
        
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(11.2, 19.03, 17.6, 1.95)];
        [fillColor2 setFill];
        [rectangle2Path fill];
        
        
        //// Rectangle 3 Drawing
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(11.2, 25.12, 17.6, 1.95)];
        [fillColor2 setFill];
        [rectangle3Path fill];
    }
}


@end
