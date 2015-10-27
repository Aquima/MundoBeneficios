//
//  UIFont+SourceSansPro.m
//  AwesomeApp Service Provider
//
//  Created by Raul Quispe on 8/17/15.
//  Copyright (c) 2015 Deep Gami. All rights reserved.
//

#import "UIFont+SourceSansPro.h"

@implementation UIFont(SourceSansPro)
+ (UIFont *)fontSourceSansProRegular:(CGFloat)size
{
    return [UIFont fontWithName:@"SourceSansPro-Regular" size:size];
}

+ (UIFont *)fontSourceSansProSemiBold:(CGFloat)size
{
    return [UIFont fontWithName:@"SourceSansPro-Semibold" size:size];
}
+ (UIFont *)fontSourceSansProLight:(CGFloat)size
{
    return [UIFont fontWithName:@"SourceSansPro-Light" size:size];
}
@end
