//
//  RegisterViewController.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/27/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "RegisterViewController.h"
#import "FormTexfield.h"
#import "UIColor+Hex.h"
#import "UIFont+AvenirLTStd.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

#pragma mark - Viewcontrollers

@interface RegisterViewController ()<UITextFieldDelegate>{
    
}
@end

@implementation RegisterViewController{
    CGSize sizeView;
    FormTexfield*txtDNI;
    FormTexfield*txtName;
    FormTexfield*txtLastName;
    FormTexfield*txtEmail;
    FormTexfield*txtBithday;
    FormTexfield*txtPhone;
    FormTexfield*txtProduct;
    UIScrollView*scrollView;
    NSString*strForSocialId;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    
    [self.view addSubview:[self getBodyView]];
    [self.view addSubview:[self getButtonBack]];
    
    UILabel*lblTitleMessage = [[UILabel alloc] initWithFrame:CGRectMake(0, 121, sizeView.width, 50)];
    [lblTitleMessage setText:NSLocalizedString(@"TITLE_MESSAGE_REGISTER", nil)];
    [lblTitleMessage setFont:[UIFont fontAvenirLTStdLight:14]];
    [lblTitleMessage setTextColor:[UIColor whiteColor]];
    [lblTitleMessage setTextAlignment:NSTextAlignmentCenter];
    [lblTitleMessage setNumberOfLines:2];
    [lblTitleMessage setLineBreakMode:NSLineBreakByWordWrapping];
    [self.view addSubview:lblTitleMessage];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return false;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
#pragma mark - Views
-(UIView*)getButtonBack{
    
    UIView *content = [[UIView alloc] initWithFrame:CGRectMake(10, 25, 30, 30)];
    UIButton*btnBack = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [btnBack setImage:[UIImage imageNamed:@"goBack"] forState:UIControlStateNormal];
    [btnBack addTarget:self action:@selector(goBack:) forControlEvents:UIControlEventTouchUpInside];
    [btnBack setBackgroundColor:[UIColor clearColor]];
    [content addSubview:btnBack];
    content.layer.cornerRadius = 15;
    content.layer.masksToBounds = true;
    content.layer.borderColor = [UIColor whiteColor].CGColor;
    content.layer.borderWidth = 1;
    [content setBackgroundColor:[UIColor clearColor]];
    
    return content;
}
-(UIView*)getBodyView{
    UIScrollView*content = [[UIScrollView alloc] initWithFrame:CGRectMake(0,172, sizeView.width, sizeView.height-172)];
    
    [content setBackgroundColor:[UIColor clearColor]];
  //  [content setFrame:CGRectMake(0, 64, 320,sizeView.height-172)];
    [content setScrollEnabled:YES];
    [content setContentSize:CGSizeMake(320, 548)];
    
    txtDNI = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 10, sizeView.width-100, 35)];
    [txtDNI setTextColor:[UIColor whiteColor]];
    [txtDNI setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtDNI setPlaceholder:NSLocalizedString(@"PLACEHOLDER_DNI", nil)];
    [txtDNI addTarget:self
               action:@selector(textFieldDidChange:)
     forControlEvents:UIControlEventEditingChanged];
    if ([txtDNI respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtDNI.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_DNI", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtDNI setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtDNI.returnKeyType = UIReturnKeyNext;
    [txtDNI setKeyboardType:UIKeyboardTypeNumberPad];
    
    [content addSubview:txtDNI];
    
    UIButton*btnEnter = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-136)/2, 63,136 , 50)];
    btnEnter.layer.cornerRadius = 25;
    [btnEnter.titleLabel setFont:[UIFont fontAvenirLTStdBook:15]];
    btnEnter.layer.masksToBounds = true;
    btnEnter.layer.borderColor = [UIColor whiteColor].CGColor;
    btnEnter.layer.borderWidth = 1;
    [btnEnter setBackgroundColor:[UIColor colorFromHexString:@"1ba53f" withAlpha:1]];
    [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_VERIFY", nil) forState:UIControlStateNormal];
    [content addSubview:btnEnter];
    
    
    txtName = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 127, sizeView.width-100, 35)];
    [txtName setTextColor:[UIColor whiteColor]];
    [txtName setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtName setPlaceholder:NSLocalizedString(@"PLACEHOLDER_NAME", nil)];
    [txtName addTarget:self
                    action:@selector(textFieldDidChange:)
          forControlEvents:UIControlEventEditingChanged];
    if ([txtName respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_NAME", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtName setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtName.returnKeyType = UIReturnKeyDone;
    txtName.secureTextEntry = false;
    [txtName setDelegate:self];
    [content addSubview:txtName];
    
    txtLastName = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 182, sizeView.width-100, 35)];
    [txtLastName setTextColor:[UIColor whiteColor]];
    [txtLastName setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtLastName setPlaceholder:NSLocalizedString(@"PLACEHOLDER_LASTNAME", nil)];
    [txtLastName addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtLastName respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtLastName.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_LASTNAME", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtLastName setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtLastName.returnKeyType = UIReturnKeyDone;
    txtLastName.secureTextEntry = false;
    [txtLastName setDelegate:self];
    [content addSubview:txtLastName];
    
    txtEmail = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 237, sizeView.width-100, 35)];
    [txtEmail setTextColor:[UIColor whiteColor]];
    [txtEmail setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtEmail setPlaceholder:NSLocalizedString(@"PLACEHOLDER_EMAIL", nil)];
    [txtEmail addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtEmail respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtEmail.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_EMAIL", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtEmail setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtEmail.returnKeyType = UIReturnKeyDone;
    txtEmail.secureTextEntry = false;
    [txtEmail setDelegate:self];
    [content addSubview:txtEmail];
    
    txtBithday = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 292, sizeView.width-100, 35)];
    [txtBithday setTextColor:[UIColor whiteColor]];
    [txtBithday setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtBithday setPlaceholder:NSLocalizedString(@"PLACEHOLDER_BIRTHDAY", nil)];
    [txtBithday addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtBithday respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtBithday.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_BIRTHDAY", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtBithday setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtBithday.returnKeyType = UIReturnKeyDone;
    txtBithday.secureTextEntry = false;
    [txtBithday setDelegate:self];
    [content addSubview:txtBithday];
    
    txtPhone = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 347, sizeView.width-100, 35)];
    [txtPhone setTextColor:[UIColor whiteColor]];
    [txtPhone setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtPhone setPlaceholder:NSLocalizedString(@"PLACEHOLDER_PHONE", nil)];
    [txtPhone addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtPhone respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtPhone.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_PHONE", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtPhone setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtPhone.returnKeyType = UIReturnKeyDone;
    txtPhone.secureTextEntry = false;
    [txtPhone setDelegate:self];
    [content addSubview:txtPhone];
    
    txtProduct = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 402, sizeView.width-100, 35)];
    [txtProduct setTextColor:[UIColor whiteColor]];
    [txtProduct setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtProduct setPlaceholder:NSLocalizedString(@"PLACEHOLDER_PRODUCT", nil)];
    [txtProduct addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtProduct respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtProduct.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_PRODUCT", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtProduct setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtProduct.returnKeyType = UIReturnKeyDone;
    txtProduct.secureTextEntry = false;
    [txtProduct setDelegate:self];
    [content addSubview:txtProduct];
    
    UIView * contentFacebookBtn = [[UIView alloc] initWithFrame:CGRectMake((sizeView.width-230)/2, 468, 230, 46)];
    contentFacebookBtn.layer.cornerRadius = 23;
    contentFacebookBtn.layer.masksToBounds = true;
    contentFacebookBtn.layer.borderWidth = 1;
    contentFacebookBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    [contentFacebookBtn setBackgroundColor:[UIColor colorFromHexString:@"3157a8" withAlpha:1]];
    [content addSubview:contentFacebookBtn];
    
    UILabel*lblTitleFacebook = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, contentFacebookBtn.frame.size.width, contentFacebookBtn.frame.size.height)];
    [lblTitleFacebook setText:NSLocalizedString(@"TITLE_FACEBOOK", nil)];
    [lblTitleFacebook setTextColor:[UIColor whiteColor]];
    [lblTitleFacebook setFont:[UIFont fontAvenirLTStdBook:12]];
    [lblTitleFacebook setTextAlignment:NSTextAlignmentCenter];
    [contentFacebookBtn addSubview:lblTitleFacebook];
    
    UIButton*btnFacebook = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, contentFacebookBtn.frame.size.width, contentFacebookBtn.frame.size.height)];
    [btnFacebook addTarget:self action:@selector(getFacebookProfile:) forControlEvents:UIControlEventTouchUpInside];
    [contentFacebookBtn addSubview:btnFacebook];
    scrollView = content;
    return content;
}
#pragma mark - Texfield
-(void)textFieldDidChange :(UITextField *)theTextField{
    if (theTextField == txtEmail) {
        
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtDNI) {
        [textField resignFirstResponder];
    }
    
    return YES;
}
#pragma mark - Actions
-(IBAction)goBack:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:true];
}
-(IBAction)getFacebookProfile:(id)sender{
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login logInWithReadPermissions:@[@"public_profile", @"email",@"user_about_me",@"user_hometown",@"user_location"] fromViewController:self handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error) {
            // Process error
        } else if (result.isCancelled) {
            // Handle cancellations
        } else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if ([result.grantedPermissions containsObject:@"email"]) {
                // Do work
            }
            if (result.token) {
                
                [self getFacebookProfileInfo];
                //  FBSDKProfile.currentUser.Correo;
            }
        }
    }];
}
#pragma mark - Facebook Methods
-(void)getFacebookProfileInfo {
    
    FBSDKGraphRequest *requestMe = [[FBSDKGraphRequest alloc]initWithGraphPath:@"me?fields=id,name,last_name,first_name,locale,bio,email,hometown&debug=all" parameters:nil];
    
    FBSDKGraphRequestConnection *connection = [[FBSDKGraphRequestConnection alloc] init];
    
    [connection addRequest:requestMe completionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
        
        if(result)
        {
            NSLog(@"%@",result);

            if ([result objectForKey:@"email"]) {
                [txtEmail setText:[result objectForKey:@"email"]];
            }
            if ([result objectForKey:@"first_name"]) {
                
                NSString*strFirstName = [result objectForKey:@"first_name"];
                [txtName setText:strFirstName];
            }
            if ([result objectForKey:@"last_name"]) {
                NSString*strLastName = [result objectForKey:@"last_name"];
                [txtLastName setText:strLastName];
            }
            if ([result objectForKey:@"bio"]) {
               
            }
            if ([result objectForKey:@"id"]) {
                strForSocialId = [NSString stringWithFormat:@"%@10",[result objectForKey:@"id"]];
            //    NSString *userImageURL = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?type=large", strForSocialId];
                CGPoint offset=CGPointMake(0, 0);
                [scrollView setContentOffset:offset animated:YES];
                
            }
            
        }
        
    }];
    
    [connection start];
    
}

@end
