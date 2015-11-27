//
//  ProgressView.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 11/13/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "ProgressView.h"
#import "DGActivityIndicatorView.h"

@implementation ProgressView{
    UIView*content;
    UIView*currentParent;
    UILabel*lblTitle;
    NSString*baseStr;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(ProgressView *)sharedInstance{
    static dispatch_once_t pred;
    static ProgressView *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[ProgressView alloc] init];
    });
    return shared;
}
-(id)init{
    content = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [content setBackgroundColor:[self colorFromHexString:@"000000" withAlpha:0.5]];
    
    DGActivityIndicatorView *activityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:DGActivityIndicatorAnimationTypeRotatingTrigons tintColor:[UIColor whiteColor] size:20.0f];
    activityIndicatorView.frame = CGRectMake((content.frame.size.width-70)/2, (content.frame.size.height-70)/2, 70.0f, 70.0f);
    [activityIndicatorView setSize:70];
    lblTitle = [[UILabel alloc] initWithFrame:CGRectMake((content.frame.size.width-200)/2, activityIndicatorView.frame.origin.y+80, 200, 20)];
    [lblTitle setTextAlignment:NSTextAlignmentCenter];
    [lblTitle setFont:[UIFont fontWithName:@"Avenir-Light" size:12]];
    [lblTitle setTextColor:[UIColor whiteColor]];
    [content addSubview:lblTitle];
    [content addSubview:activityIndicatorView];
    [activityIndicatorView startAnimating];
    baseStr = @"";
    [self updateLoadingLabel];
       return self;
}
-(void)showInView:(UIView*)view{
    [view addSubview:content];
    
    [content setHidden:false];
}
-(void)showInView:(UIView*)view withTitle:(NSString*)title{
    baseStr = title;
    [view addSubview:content];
    [lblTitle setText:title];
    [content setHidden:false];
}
-(void)hide{
    [lblTitle setText:@""];
    [content removeFromSuperview];
    [content setHidden:true];
}
- (void) updateLoadingLabel;
{
    if([lblTitle.text isEqualToString:[NSString stringWithFormat:@"%@",baseStr]]) {
        lblTitle.text = [NSString stringWithFormat:@"%@.",baseStr];
    } else if([lblTitle.text isEqualToString:[NSString stringWithFormat:@"%@.",baseStr]])  {
        lblTitle.text = [NSString stringWithFormat:@"%@..",baseStr];
    }else if([lblTitle.text isEqualToString:[NSString stringWithFormat:@"%@..",baseStr]]) {
         lblTitle.text = [NSString stringWithFormat:@"%@...",baseStr];
    }else{
        lblTitle.text = baseStr;
    }
    [self performSelector:@selector(updateLoadingLabel) withObject:nil afterDelay:0.7]; //each second
}
-(UIColor *)colorFromHexString:(NSString *)hexString withAlpha:(float)alpha {
    
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
