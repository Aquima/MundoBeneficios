//
//  LogInViewController.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/26/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "LogInViewController.h"
#import "UIColor+Hex.h"
#import "UIFont+AvenirLTStd.h"
#import "FormTexfield.h"
@interface LogInViewController ()<UITextFieldDelegate>

@end

@implementation LogInViewController{
    CGSize sizeView;
    FormTexfield*txtDNI;
    FormTexfield*txtPassword;
}
typedef enum textFieldTypes
{
    TEXTFIELD_PASSWORD,
    TEXTFIELD_DNI
} TextFieldType;

- (void)viewDidLoad {
    [super viewDidLoad];
       
    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    
    UIImageView*imgFooterLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-146)/2, sizeView.height-33-40, 146, 33)];
    [imgFooterLogo setImage:[UIImage imageNamed:@"interseguro"]];
    [self.view addSubview:imgFooterLogo];
    
    [self.view addSubview:[self getBodyView]];
    [self.view addSubview:[self getFooterView]];
    // Do any additional setup after loading the view.
}
-(UIView*)getTopView{
    UIView*content = [[UIView alloc] init];
    return content;
}
-(UIView*)getBodyView{
    UIView*content = [[UIView alloc] initWithFrame:CGRectMake(0, (sizeView.height-365)/2, sizeView.width, 365)];
    [content setBackgroundColor:[UIColor clearColor]];
    
    txtDNI = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 47, sizeView.width-100, 35)];
    [txtDNI setTag:TEXTFIELD_DNI];
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
    
    txtPassword = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 100, sizeView.width-100, 35)];
    [txtPassword setTag:TEXTFIELD_PASSWORD];
    [txtPassword setTextColor:[UIColor whiteColor]];
    [txtPassword setFont:[UIFont fontAvenirLTStdLight:14]];
    [txtPassword setPlaceholder:NSLocalizedString(@"PLACEHOLDER_PASSWORD", nil)];
    [txtPassword addTarget:self
               action:@selector(textFieldDidChange:)
     forControlEvents:UIControlEventEditingChanged];
    if ([txtPassword respondsToSelector:@selector(setAttributedPlaceholder:)]) {
        UIColor *color = [UIColor colorWithWhite:1 alpha:0.8];
        txtPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:NSLocalizedString(@"PLACEHOLDER_PASSWORD", nil) attributes:@{NSForegroundColorAttributeName: color}];
    } else {
        NSLog(@"Cannot set placeholder text's color, because deployment target is earlier than iOS 6.0");
        // TODO: Add fall-back code to set placeholder color.
    }
    [txtPassword setTintColor:[UIColor colorWithWhite:1 alpha:0.8]];
    txtPassword.returnKeyType = UIReturnKeyDone;
    txtPassword.secureTextEntry = true;
    [txtPassword setDelegate:self];
    [content addSubview:txtPassword];
    
    UILabel*lblTitleMessage = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, sizeView.width, 17)];
    [lblTitleMessage setText:NSLocalizedString(@"TITLE_MESSAGE", nil)];
    [lblTitleMessage setFont:[UIFont fontAvenirLTStdLight:16]];
    [lblTitleMessage setTextColor:[UIColor whiteColor]];
    [lblTitleMessage setTextAlignment:NSTextAlignmentCenter];
    [content addSubview:lblTitleMessage];
    
    UIButton*btnEnter = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-136)/2, 158,136 , 50)];
    btnEnter.layer.cornerRadius = 25;
    [btnEnter.titleLabel setFont:[UIFont fontAvenirLTStdBook:15]];
    btnEnter.layer.masksToBounds = true;
    btnEnter.layer.borderColor = [UIColor whiteColor].CGColor;
    btnEnter.layer.borderWidth = 1;
    [btnEnter setBackgroundColor:[UIColor colorFromHexString:@"1ba53f" withAlpha:1]];
    [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_ENTER", nil) forState:UIControlStateNormal];
    [content addSubview:btnEnter];
    
    UILabel*lblTitleMessageRegister = [[UILabel alloc] initWithFrame:CGRectMake(0, 240, sizeView.width, 17)];
    [lblTitleMessageRegister setText:NSLocalizedString(@"TITLE_MESSAGE_REGISTER", nil)];
    [lblTitleMessageRegister setFont:[UIFont fontAvenirLTStdLight:16]];
    [lblTitleMessageRegister setTextColor:[UIColor whiteColor]];
    [lblTitleMessageRegister setTextAlignment:NSTextAlignmentCenter];
    [content addSubview:lblTitleMessageRegister];
    
    UIButton*btnOpenRegister = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-100)/2, 260,100 , 44)];
    [btnOpenRegister setBackgroundColor:[UIColor clearColor]];
    [btnOpenRegister setTitle:NSLocalizedString(@"TITLE_BTN_OPEN_REGISTER", nil) forState:UIControlStateNormal];
    [btnOpenRegister.titleLabel setFont:[UIFont fontAvenirLTStdLight:12]];
    [content addSubview:btnOpenRegister];
    
    UILabel*lblTitleMessageForget = [[UILabel alloc] initWithFrame:CGRectMake(0, 313, sizeView.width, 17)];
    [lblTitleMessageForget setText:NSLocalizedString(@"TITLE_MESSAGE_FORGET", nil)];
    [lblTitleMessageForget setFont:[UIFont fontAvenirLTStdLight:16]];
    [lblTitleMessageForget setTextColor:[UIColor whiteColor]];
    [lblTitleMessageForget setTextAlignment:NSTextAlignmentCenter];
    [content addSubview:lblTitleMessageForget];
    
    UIButton*btnOpenForget = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-180)/2, 333,180 , 44)];
    [btnOpenForget setBackgroundColor:[UIColor clearColor]];
    [btnOpenForget setTitle:NSLocalizedString(@"TITLE_BTN_OPEN_FORGET", nil) forState:UIControlStateNormal];
    [btnOpenForget.titleLabel setFont:[UIFont fontAvenirLTStdLight:12]];
    [content addSubview:btnOpenForget];

    
    return content;
}
-(UIView*)getFooterView{
    UIView*content = [[UIView alloc] initWithFrame:CGRectMake(0, sizeView.height, sizeView.width, 50)];
    [content setBackgroundColor:[UIColor clearColor]];
    return content;
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - Texfield
-(void)textFieldDidChange :(UITextField *)theTextField{
    if (theTextField == txtDNI) {
        if (theTextField.text.length ==8) {
            [theTextField resignFirstResponder];
            [txtPassword becomeFirstResponder];
        }
    }
    if (theTextField == txtPassword) {
      
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtPassword) {
        [textField resignFirstResponder];
    }
    
    return YES;
}

@end
