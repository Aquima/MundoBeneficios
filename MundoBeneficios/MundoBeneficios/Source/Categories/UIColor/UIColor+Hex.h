//
//  UIColor+Hex.h
//  AwesomeApp
//
//  Created by Raul Quispe on 8/7/15.
//  Copyright (c) 2015 Jigs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Hex)
+ (UIColor *)colorFromHexString:(NSString *)hexString withAlpha:(float)alpha;
@end
