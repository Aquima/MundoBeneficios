//
//  UIColor+Hex.m
//  AwesomeApp
//
//  Created by Raul Quispe on 8/7/15.
//  Copyright (c) 2015 Jigs. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor(Hex)
+ (UIColor *)colorFromHexString:(NSString *)hexString withAlpha:(float)alpha {
    
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    
    if (hexString.length == 3)
        hexString = [NSString stringWithFormat:@"%c%c%c%c%c%c",
                     [hexString characterAtIndex:0], [hexString characterAtIndex:0],
                     [hexString characterAtIndex:1], [hexString characterAtIndex:1],
                     [hexString characterAtIndex:2], [hexString characterAtIndex:2]];
    
    if (hexString.length == 6)
    {
        int r, g, b;
        sscanf([hexString UTF8String], "%2x%2x%2x", &r, &g, &b);
        return [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:alpha];
    }
    
    return nil;
}
@end
