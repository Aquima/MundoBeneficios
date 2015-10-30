//
//  ForgetViewController.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/27/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "ForgetViewController.h"
#import "LogInViewController.h"
#import "UIColor+Hex.h"
#import "UIFont+AvenirLTStd.h"
#import "FormTexfield.h"

@interface ForgetViewController (){
    CGSize sizeView;
    FormTexfield*txtDNI;
}
@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    [self.view addSubview:[self getButtonBack]];
    [self.view addSubview:[self getBodyView]];
    [self.view addSubview:[self getFooterView]];
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
    UIView*content = [[UIView alloc] initWithFrame:CGRectMake(0, (sizeView.height-365)/2, sizeView.width, 365)];
    [content setBackgroundColor:[UIColor clearColor]];
    
    txtDNI = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 47, sizeView.width-100, 35)];
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
    
    UILabel*lblTitleMessage = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, sizeView.width, 34)];
    [lblTitleMessage setText:NSLocalizedString(@"TITLE_MESSAGE_FORGET", nil)];
    [lblTitleMessage setFont:[UIFont fontAvenirLTStdLight:12]];
    [lblTitleMessage setTextColor:[UIColor whiteColor]];
    [lblTitleMessage setNumberOfLines:2];
    [lblTitleMessage setLineBreakMode:NSLineBreakByWordWrapping];
    [lblTitleMessage setTextAlignment:NSTextAlignmentCenter];
    [content addSubview:lblTitleMessage];
    
    UIButton*btnEnter = [[UIButton alloc] initWithFrame:CGRectMake((sizeView.width-136)/2, 158,136 , 50)];
    btnEnter.layer.cornerRadius = 25;
    [btnEnter.titleLabel setFont:[UIFont fontAvenirLTStdBook:15]];
    btnEnter.layer.masksToBounds = true;
    btnEnter.layer.borderColor = [UIColor whiteColor].CGColor;
    btnEnter.layer.borderWidth = 1;
    [btnEnter setBackgroundColor:[UIColor colorFromHexString:@"1ba53f" withAlpha:1]];
    [btnEnter setTitle:NSLocalizedString(@"TITLE_BTN_SEND", nil) forState:UIControlStateNormal];
    [content addSubview:btnEnter];
    return content;
}
-(UIView*)getFooterView{
    UIView*content = [[UIView alloc] initWithFrame:CGRectMake(0, sizeView.height-33-40, sizeView.width, 50)];
    [content setBackgroundColor:[UIColor colorWithWhite:1 alpha:0.2]];
    UIImageView*imgFooterLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-146)/2, (50-33)/2, 146, 33)];
    [imgFooterLogo setImage:[UIImage imageNamed:@"interseguro"]];
    [content addSubview:imgFooterLogo];
    return content;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - Actions
-(IBAction)goBack:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:true];
}
#pragma mark - Texfield
-(void)textFieldDidChange :(UITextField *)theTextField{
    if (theTextField == txtDNI) {
        if (theTextField.text.length ==8) {
            [theTextField resignFirstResponder];
           
        }
    }
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtDNI) {
        [textField resignFirstResponder];
    }
    
    return YES;
}
@end
