//
//  ProgressView.h
//  MundoBeneficios
//
//  Created by Raul Quispe on 11/13/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressView : UIView
+(ProgressView *)sharedInstance;
-(void)showInView:(UIView*)view;
-(void)showInView:(UIView*)view withTitle:(NSString*)title;
-(void)hide;
@end
