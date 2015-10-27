//
//  FormTexfield.m
//  AwesomeApp
//
//  Created by Raul on 7/27/15.
//  Copyright © 2015 Jigs. All rights reserved.
//

#import "FormTexfield.h"
#import "UIColor+Hex.h"
@implementation FormTexfield


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.frame = CGRectMake(-50.0f, self.frame.size.height + 7.5f, self.frame.size.width+100.0f, 1.0f);
    bottomBorder.backgroundColor = [UIColor colorFromHexString:@"4795bb" withAlpha:1].CGColor;

    [self.layer addSublayer:bottomBorder];
    
    self.layer.masksToBounds =false;
   
   // [self setTextColor:[UIColor colorFromHexString:@"146677" withAlpha:1]];
}


@end
