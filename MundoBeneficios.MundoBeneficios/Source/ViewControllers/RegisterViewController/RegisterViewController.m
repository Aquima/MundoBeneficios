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
#import "ProgressView.h"
#import "NYAlertViewController.h"

#pragma mark - Icons
#import "IconEmailView.h"
#import "IconPasswordView.h"
#import "IconDateView.h"
#import "IconUserView.h"
#import "IconProductView.h"
#import "IconPhoneView.h"

#pragma ApiConsume
#import "QueryWebService.h"
#import "ApiConstants.h"
#import "AccountConstants.h"

#pragma mark - Viewcontrollers
NSString *const registerBackgroundColor = @"2485c2";
@interface RegisterViewController ()<UITextFieldDelegate>{
    
}
@end

@implementation RegisterViewController{
    CGSize sizeView;
    FormTexfield*txtDNI;
    FormTexfield*txtName;
    FormTexfield*txtLastName;
    FormTexfield*txtEmail;
    FormTexfield*txtBirthday;
    FormTexfield*txtPhone;
    FormTexfield*txtProduct;
    UIScrollView*scrollView;
    NSString*strForSocialId;
    UIButton*btnEnter;
    FormTexfield*currentTextField;
    BOOL isForRegister;
    NSString * strCurrentDate;
    UIView*contentDatePicker;
    UIButton*btnRegister;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    isForRegister=false;
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
    [content setContentSize:CGSizeMake(320, 548+56)];
    
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
    }
    [txtDNI setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtDNI.returnKeyType = UIReturnKeyNext;
    [txtDNI setKeyboardType:UIKeyboardTypeNumberPad];
    
    [content addSubview:txtDNI];
    
    IconUserView*iconDNI = [[IconUserView alloc] initWithFrame:CGRectMake(txtDNI.frame.origin.x-55, txtDNI.frame.origin.y-15, 55, 55)];
    [iconDNI setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconDNI];
    
    btnEnter = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-136)/2, 63,136 , 50)];
    btnEnter.layer.cornerRadius = 25;
    [btnEnter.titleLabel setFont:[UIFont fontAvenirLTStdBook:15]];
    btnEnter.layer.masksToBounds = true;
    btnEnter.layer.borderColor = [UIColor whiteColor].CGColor;
    btnEnter.layer.borderWidth = 1;
    [btnEnter setBackgroundColor:[UIColor colorFromHexString:@"1ba53f" withAlpha:1]];
    [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_VERIFY", nil) forState:UIControlStateNormal];
    [btnEnter addTarget:self action:@selector(verifyDocument:) forControlEvents:UIControlEventTouchUpInside];
    
    [content addSubview:btnEnter];
    
    CGRect rect = CGRectMake(0.0f, 0.0f, btnEnter.frame.size.width,btnEnter.frame.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [[UIColor darkGrayColor] CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [btnEnter setBackgroundImage:image forState:UIControlStateDisabled];
    btnEnter.enabled = false;
    
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
    }
    [txtName setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtName.returnKeyType = UIReturnKeyDone;
    txtName.secureTextEntry = false;
    [txtName setDelegate:self];
    [content addSubview:txtName];
    
    IconUserView*iconName = [[IconUserView alloc] initWithFrame:CGRectMake(txtName.frame.origin.x-55, txtName.frame.origin.y-15, 55, 55)];
    [iconName setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconName];
    
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
    }
    [txtLastName setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtLastName.returnKeyType = UIReturnKeyDone;
    txtLastName.secureTextEntry = false;
    [txtLastName setDelegate:self];
    [content addSubview:txtLastName];
    
    IconUserView*iconLastName = [[IconUserView alloc] initWithFrame:CGRectMake(txtLastName.frame.origin.x-55, txtLastName.frame.origin.y-15, 55, 55)];
    [iconLastName setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconLastName];
    
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
    }
    [txtEmail setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtEmail.returnKeyType = UIReturnKeyDone;
    txtEmail.secureTextEntry = false;
    txtEmail.keyboardType = UIKeyboardTypeEmailAddress;
    [txtEmail setDelegate:self];
    [content addSubview:txtEmail];
    
    IconEmailView*iconEmail = [[IconEmailView alloc] initWithFrame:CGRectMake(txtEmail.frame.origin.x-55, txtEmail.frame.origin.y-15, 55, 55)];
    [iconEmail setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconEmail];
    
    txtBirthday = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 292, sizeView.width-100, 35)];
    [txtBirthday setTextColor:[UIColor whiteColor]];
    [txtBirthday setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtBirthday setPlaceholder:NSLocalizedString(@"PLACEHOLDER_BIRTHDAY", nil)];
    [txtBirthday addTarget:self
                action:@selector(textFieldDidChange:)
      forControlEvents:UIControlEventEditingChanged];
    if ([txtBirthday respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtBirthday.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_BIRTHDAY", nil) attributes:@{NSForegroundColorAttributeName: color}];
    }
    [txtBirthday setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtBirthday.returnKeyType = UIReturnKeyDone;
    txtBirthday.secureTextEntry = false;
    [txtBirthday setDelegate:self];
    [content addSubview:txtBirthday];
    
    IconDateView*iconDate = [[IconDateView alloc] initWithFrame:CGRectMake(txtBirthday.frame.origin.x-55, txtBirthday.frame.origin.y-15, 55, 55)];
    [iconDate setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconDate];
    
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
    }
    [txtPhone setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtPhone.returnKeyType = UIReturnKeyDone;
    txtPhone.secureTextEntry = false;
    txtPhone.keyboardType = UIKeyboardTypePhonePad;
    [txtPhone setDelegate:self];
    [content addSubview:txtPhone];
    
    IconPhoneView*iconPhone = [[IconPhoneView alloc] initWithFrame:CGRectMake(txtPhone.frame.origin.x-55, txtPhone.frame.origin.y-15, 55, 55)];
    [iconPhone setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconPhone];
    
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
    }
    [txtProduct setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtProduct.returnKeyType = UIReturnKeyDone;
    txtProduct.secureTextEntry = false;
    [txtProduct setDelegate:self];
    [content addSubview:txtProduct];
    
    IconProductView*iconProduct = [[IconProductView alloc] initWithFrame:CGRectMake(txtProduct.frame.origin.x-55, txtProduct.frame.origin.y-15, 55, 55)];
    [iconProduct setBackgroundColor:[UIColor clearColor]];
    [content addSubview:iconProduct];
    
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
    
    btnRegister = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-230)/2, 468+10+46, 230, 46)];
    [btnRegister addTarget:self action:@selector(registerUser:) forControlEvents:UIControlEventTouchUpInside];
    [btnRegister setTitle:NSLocalizedString(@"TITLE_BTN_REGISTER", nil) forState:UIControlStateNormal];
    [btnRegister setBackgroundColor:[UIColor colorFromHexString:@"1ba53f" withAlpha:1]];
    [content addSubview:btnRegister];
    
    CGRect rectRegister = CGRectMake(0.0f, 0.0f, btnRegister.frame.size.width,btnRegister.frame.size.height);
    UIGraphicsBeginImageContext(rectRegister.size);
    CGContextRef contextRegister = UIGraphicsGetCurrentContext(); 
    
    CGContextSetFillColorWithColor(contextRegister, [[UIColor darkGrayColor] CGColor]);
    CGContextFillRect(contextRegister, rectRegister);
    
    UIImage *imageRegister = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [btnRegister.titleLabel setFont:[UIFont fontAvenirLTStdBook:15]];
    [btnRegister setBackgroundImage:imageRegister forState:UIControlStateDisabled];
    btnRegister.enabled = false;
    btnRegister.layer.cornerRadius = 23;
    btnRegister.layer.masksToBounds = true;
    btnRegister.layer.borderWidth = 1;
    btnRegister.layer.borderColor = [UIColor whiteColor].CGColor;

    scrollView = content;
    return content;
}
#pragma mark - Texfield
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    currentTextField = (FormTexfield*)textField;
    if (textField == txtName) {

        CGPoint offset=CGPointMake(0, txtName.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtLastName) {

        CGPoint offset=CGPointMake(0, txtLastName.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtEmail) {

        CGPoint offset=CGPointMake(0, txtEmail.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtBirthday) {
        [currentTextField resignFirstResponder];
          [self createDatePicker];
        CGPoint offset=CGPointMake(0, txtBirthday.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
      
    }
    if (textField == txtPhone) {

        CGPoint offset=CGPointMake(0, txtPhone.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtProduct) {

        CGPoint offset=CGPointMake(0,txtProduct.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }

}
-(void)textFieldDidChange :(UITextField *)textField{
    currentTextField = (FormTexfield*)textField;
    if (textField == txtDNI) {
        if (textField.text.length==8) {
            [textField resignFirstResponder];
            btnEnter.enabled = true;
        }else{
            btnEnter.enabled = false;
        }
        if ([self validateAllFields]==true) {
            btnRegister.enabled=true;
        }else{
            btnRegister.enabled=false;
        }
    }
    if (textField == txtPhone) {
        if (txtPhone.text.length==9) {
            [txtPhone resignFirstResponder];
               [txtProduct becomeFirstResponder];
        }
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtDNI) {
        [textField resignFirstResponder];
    }
    if (textField == txtName) {
        [txtLastName becomeFirstResponder];
        CGPoint offset=CGPointMake(0, txtLastName.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtLastName) {
        [txtEmail becomeFirstResponder];
        CGPoint offset=CGPointMake(0, txtEmail.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtEmail) {
        [currentTextField resignFirstResponder];
        [self createDatePicker];
        CGPoint offset=CGPointMake(0, txtBirthday.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtBirthday) {
        [txtPhone becomeFirstResponder];
        CGPoint offset=CGPointMake(0, txtPhone.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtPhone) {
        [txtProduct becomeFirstResponder];
        CGPoint offset=CGPointMake(0, txtProduct.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }
    if (textField == txtProduct) {
        [textField resignFirstResponder];
        CGPoint offset=CGPointMake(0,124);
        [scrollView setContentOffset:offset animated:YES];
    }
    if ([self validateAllFields]==true) {
        btnRegister.enabled=true;
    }else{
        btnRegister.enabled=false;
    }
    return YES;
}
#pragma mark - Actions
-(IBAction)registerUser:(id)sender{
    CGPoint offset=CGPointMake(0, txtDNI.frame.origin.y);
    [scrollView setContentOffset:offset animated:YES];
    [currentTextField resignFirstResponder];
//    {
//        "birthay": "sample string 1",
//        "document": "sample string 2",
//        "email": "sample string 3",
//        "lastName": "sample string 4",
//        "name": "sample string 5",
//        "phone": "sample string 6"
//    }
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endPostRegisterUser:) name:@"endPostRegisterUser" object:nil];
    
    NSDictionary*params=@{PARAM_DOCUMENT:txtDNI.text,
                          PARAM_BIRTHDAY:txtBirthday.text,
                          PARAM_EMAIL:txtEmail.text,
                          PARAM_NAME:txtName.text,
                          PARAM_LASTNAME:txtLastName.text,
                          PARAM_PHONE:txtPhone.text};
    
    [[ProgressView sharedInstance] showInView:self.view withTitle:@"Verificando"];
    [[QueryWebService sharedInstance] getDataFromPath:FILE_VERYFY_DOCUMENT withMethod:POST withParamData:params withNotification:@"endPostRegisterUser"];
}
-(IBAction)verifyDocument:(id)sender{
    [currentTextField resignFirstResponder];
    if (isForRegister==true) {
        
    }else{
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endPostVerifyDocument:) name:@"endPostVerifyDocument" object:nil];
        
        NSDictionary*params=@{PARAM_DOCUMENT:txtDNI.text};
        [[ProgressView sharedInstance] showInView:self.view withTitle:@"Verificando"];
        [[QueryWebService sharedInstance] getDataFromPath:FILE_VERYFY_DOCUMENT withMethod:POST withParamData:params withNotification:@"endPostVerifyDocument"];

    }
  
}
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
//                CGPoint offset=CGPointMake(0, 0);
//                [scrollView setContentOffset:offset animated:YES];
                
            }
            
        }
        
    }];
    
    [connection start];
    
}
#pragma mark - Notifications
-(void)endPostRegisterUser:(NSNotification*)notification{
    NSDictionary*data = (NSDictionary*)notification.object;
    //    NSArray*data = [categories objectForKey:@"data"];
    
    NSLog(@"endPostVerifyDocument %@",data);

       [[ProgressView sharedInstance] hide];
    BOOL status = [[data objectForKey:@"status"] boolValue];
    
    
    if (status==true) {
        NYAlertViewController *alertViewController = [[NYAlertViewController alloc] init];
        // Customize appearance as desired
        alertViewController.buttonCornerRadius = 5.0f;
        alertViewController.cancelButtonColor = [UIColor colorFromHexString:registerBackgroundColor withAlpha:1];
        alertViewController.view.tintColor = self.view.tintColor;
        alertViewController.titleColor = [UIColor colorFromHexString:registerBackgroundColor withAlpha:1];
        alertViewController.titleFont = [UIFont fontAvenirLTStdBook:19];
        alertViewController.messageFont = [UIFont fontAvenirLTStdLight:15];
        alertViewController.buttonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.buttonTitleFont.pointSize];
        alertViewController.cancelButtonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.cancelButtonTitleFont.pointSize];
        alertViewController.title = NSLocalizedString(@"TITLE_APP", nil);
        alertViewController.swipeDismissalGestureEnabled = YES;
        alertViewController.backgroundTapDismissalGestureEnabled = YES;
        alertViewController.message = [NSString stringWithFormat:@"Se ha registrado con exito"];
        // Add alert actions

        [alertViewController addAction:[NYAlertAction actionWithTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil)
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(NYAlertAction *action) {
                                                                  [self dismissViewControllerAnimated:YES completion:^{
                                                                      CGPoint offset=CGPointMake(0, 50);
                                                                      [scrollView setContentOffset:offset animated:YES];
                                                                      isForRegister = true;
                                                                      [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_REGISTER", nil) forState:UIControlStateNormal];
                                                                      
                                                                  }];
                                                              }]];
        
        // Present the alert view controller
        [self presentViewController:alertViewController animated:true completion:nil];
    }else{
        NYAlertViewController *alertViewController = [[NYAlertViewController alloc] init];
        // Customize appearance as desired
        alertViewController.buttonCornerRadius = 5.0f;
        alertViewController.cancelButtonColor = [UIColor colorFromHexString:@"2485c2" withAlpha:1];
        alertViewController.view.tintColor = self.view.tintColor;
        alertViewController.titleColor = [UIColor colorFromHexString:@"2485c2" withAlpha:1];
        alertViewController.titleFont = [UIFont fontAvenirLTStdBook:19];
        alertViewController.messageFont = [UIFont fontAvenirLTStdLight:15];
        alertViewController.buttonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.buttonTitleFont.pointSize];
        alertViewController.cancelButtonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.cancelButtonTitleFont.pointSize];
        alertViewController.title = NSLocalizedString(@"TITLE_APP", nil);
        alertViewController.swipeDismissalGestureEnabled = YES;
        alertViewController.backgroundTapDismissalGestureEnabled = YES;
        
        alertViewController.message = [data objectForKey:@"errorDescription"];
        // Add alert actions
        [alertViewController addAction:[NYAlertAction actionWithTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil)
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(NYAlertAction *action) {
                                                                  [self dismissViewControllerAnimated:YES completion:nil];
                                                              }]];
        [self presentViewController:alertViewController animated:true completion:nil];
        
    }
     [[NSNotificationCenter defaultCenter] removeObserver:self name:notification.name object:notification.object];
}
-(void)endPostVerifyDocument:(NSNotification*)notification{
    NSDictionary*data = (NSDictionary*)notification.object;
//    NSArray*data = [categories objectForKey:@"data"];

    NSLog(@"endPostVerifyDocument %@",data);
    [[ProgressView sharedInstance] hide];
    BOOL status = [[data objectForKey:@"status"] boolValue];
    
    
    if (status==true) {
        NYAlertViewController *alertViewController = [[NYAlertViewController alloc] init];
        // Customize appearance as desired
        alertViewController.buttonCornerRadius = 5.0f;
        alertViewController.cancelButtonColor = [UIColor colorFromHexString:registerBackgroundColor withAlpha:1];
        alertViewController.view.tintColor = self.view.tintColor;
        alertViewController.titleColor = [UIColor colorFromHexString:registerBackgroundColor withAlpha:1];
        alertViewController.titleFont = [UIFont fontAvenirLTStdBook:19];
        alertViewController.messageFont = [UIFont fontAvenirLTStdLight:15];
        alertViewController.buttonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.buttonTitleFont.pointSize];
        alertViewController.cancelButtonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.cancelButtonTitleFont.pointSize];
        alertViewController.title = NSLocalizedString(@"TITLE_APP", nil);
        alertViewController.swipeDismissalGestureEnabled = YES;
        alertViewController.backgroundTapDismissalGestureEnabled = YES;
        NSDictionary*userInfo = [data objectForKey:@"data"];
        alertViewController.message = [NSString stringWithFormat:@"Bienvenido: %@ %@ su DNI se encuentra registrado, su correo electronico es: %@",[userInfo objectForKey:@"name"],[userInfo objectForKey:@"lastName"],[userInfo objectForKey:@"email"]];
        // Add alert actions
        txtName.text = [userInfo objectForKey:@"name"];
        txtLastName.text = [userInfo objectForKey:@"lastName"];
        txtEmail.text = [userInfo objectForKey:@"email"];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        
        [formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
            NSDate *date = [formatter dateFromString:[userInfo objectForKey:@"birthay"]];
        [formatter setDateFormat:@"yyyy-MM-dd"];
       
         NSString *outString = [formatter stringFromDate:date];
         txtBirthday.text = outString;
        txtPhone.text = [userInfo objectForKey:@"phone"];
        NSArray*products = (NSArray*)[userInfo objectForKey:@"products"];
        NSMutableString*allProducts = [[NSMutableString alloc] init];
        for (NSString*productStr in products) {
            [allProducts appendString:[NSString stringWithFormat:@"%@ ",productStr]];
        }
        txtProduct.text = allProducts;
        [alertViewController addAction:[NYAlertAction actionWithTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil)
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(NYAlertAction *action) {
                                                                  [self dismissViewControllerAnimated:YES completion:^{
                                                                      CGPoint offset=CGPointMake(0, 50);
                                                                      [scrollView setContentOffset:offset animated:YES];
                                                                      isForRegister = true;
                                                                      [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_REGISTER", nil) forState:UIControlStateNormal];
                                                                      
                                                                  }];
                                                              }]];
        
        // Present the alert view controller
        [self presentViewController:alertViewController animated:true completion:nil];
    }else{
        NYAlertViewController *alertViewController = [[NYAlertViewController alloc] init];
        // Customize appearance as desired
        alertViewController.buttonCornerRadius = 5.0f;
        alertViewController.cancelButtonColor = [UIColor colorFromHexString:@"2485c2" withAlpha:1];
        alertViewController.view.tintColor = self.view.tintColor;
        alertViewController.titleColor = [UIColor colorFromHexString:@"2485c2" withAlpha:1];
        alertViewController.titleFont = [UIFont fontAvenirLTStdBook:19];
        alertViewController.messageFont = [UIFont fontAvenirLTStdLight:15];
        alertViewController.buttonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.buttonTitleFont.pointSize];
        alertViewController.cancelButtonTitleFont = [UIFont fontAvenirLTStdBook:alertViewController.cancelButtonTitleFont.pointSize];
        alertViewController.title = NSLocalizedString(@"TITLE_APP", nil);
        alertViewController.swipeDismissalGestureEnabled = YES;
        alertViewController.backgroundTapDismissalGestureEnabled = YES;
        
        alertViewController.message = [data objectForKey:@"errorDescription"];
        // Add alert actions
        [alertViewController addAction:[NYAlertAction actionWithTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil)
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(NYAlertAction *action) {
                                                                  [self dismissViewControllerAnimated:YES completion:nil];
                                                              }]];
        // Present the alert view controller
       // btnEnter.enabled = false;
      //  [txtDNI setText:@""];
        [self presentViewController:alertViewController animated:true completion:nil];

    }
    
    // Set a title and message
       [[NSNotificationCenter defaultCenter] removeObserver:self name:notification.name object:notification.object];
}
#pragma mark - Logic 
-(BOOL)validateAllFields{
    if (txtDNI.text.length!=8) {
        return false;
    }else if(txtName.text.length==0){
        return false;
    }else if(txtLastName.text.length==0){
        return false;
    }else if ([self validateEmail:txtEmail.text]==false){
        return false;
    }else if (txtBirthday.text.length!=10){
        return false;
    }else if (txtPhone.text.length!=9){
        return false;
    }else if (txtProduct.text.length==0){
        return false;
    }else{
        CGPoint offset=CGPointMake(0, txtEmail.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
        return true;
    }

}
- (BOOL)validateEmail:(NSString *)candidate{
    NSString *emailRegex =
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", emailRegex];
    
    return [emailTest evaluateWithObject:candidate];
}
#pragma mark - DatePicker
- (void)createDatePicker{
  //  isBirthday = true;
    currentTextField = txtBirthday;
    if (contentDatePicker!=nil) {
        [contentDatePicker setHidden:false];
    }else{
        contentDatePicker = [[UIView alloc] initWithFrame:CGRectMake(0.0, sizeView.height-162-40, sizeView.width, 162+40)];
        [contentDatePicker setBackgroundColor: [UIColor colorFromHexString:registerBackgroundColor withAlpha:1]];
        UIButton*btnAccept = [[UIButton alloc] initWithFrame:CGRectMake(0,0,sizeView.width, 44)];
        [btnAccept setBackgroundColor:[UIColor colorFromHexString:registerBackgroundColor withAlpha:1]];
        btnAccept.titleLabel.font=[UIFont fontAvenirLTStdBook:18];
        [btnAccept setTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil) forState:UIControlStateNormal];
        [btnAccept addTarget:self action:@selector(closeDateSelection:) forControlEvents:UIControlEventTouchUpInside];
        [contentDatePicker addSubview:btnAccept];
        
        [self.view addSubview:contentDatePicker];
        
        UIDatePicker*datePicker = [[UIDatePicker alloc] initWithFrame: CGRectMake(0.0, 44, self.view.frame.size.width, 158)];
        [datePicker setValue:[UIColor whiteColor] forKeyPath:@"textColor"];
        [datePicker addTarget:self action:@selector(taskDatePicked:) forControlEvents:UIControlEventValueChanged];
        
        [contentDatePicker addSubview:datePicker];
        
        datePicker.datePickerMode = UIDatePickerModeDate;
        
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *currentDate = [NSDate date];
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:0];
        // [comps setMonth:3];
        NSDate *maxDate = [calendar dateByAddingComponents:comps toDate:currentDate options:0];
        NSDateComponents *compsMin = [[NSDateComponents alloc] init];
        [compsMin setYear:-64];
        //  [comps setMonth:0];
        NSDate *minDate = [calendar dateByAddingComponents:compsMin toDate:currentDate options:0];
        
        [datePicker setMaximumDate:maxDate];
        [datePicker setMinimumDate:minDate];
        
        NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
        dateformatter.dateStyle        = NSDateFormatterMediumStyle;
        [dateformatter setDateFormat:@"YYYY-MM-dd"];
        strCurrentDate=[dateformatter stringFromDate:[datePicker date]];
       // birthdayDate = [datePicker date];
    }
}
- (void)taskDatePicked:(UIDatePicker*)datePicker{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc]init];
    dateformatter.dateStyle        = NSDateFormatterMediumStyle;
    [dateformatter setDateFormat:@"YYYY-MM-dd"];
    strCurrentDate = [dateformatter stringFromDate:[datePicker date]];
//    birthdayDate = [datePicker date];
    [txtBirthday setText:strCurrentDate];
}
-(IBAction)closeDateSelection:(id)sender{
    [txtBirthday setText:strCurrentDate];
    [contentDatePicker setHidden:true];
    if (txtPhone.text.length!=9) {
        [txtPhone becomeFirstResponder];
        CGPoint offset=CGPointMake(0, txtPhone.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    }else{
        CGPoint offset=CGPointMake(0, txtDNI.frame.origin.y);
        [scrollView setContentOffset:offset animated:YES];
    
        [self performSelector:@selector(validateAllFields) withObject:nil afterDelay:0.5];
    }
  
}
@end
