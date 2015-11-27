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

//TODO: ViewControllers
#import "RegisterViewController.h"
#import "ForgetViewcontroller.h"
#import "HomeViewController.h"
#import "ExchangeViewController.h"
#import "AccountViewController.h"
#import "QuestionViewController.h"
#import "MessageViewController.h"
#import "FavoriteViewController.h"
#import "NYAlertViewController.h"
#import "AppDelegate.h"

//TODO: ApiConsume
#import "AccountConstants.h"
#import "QueryWebService.h"
#import "ApiConstants.h"

#import "ProgressView.h"

@interface LogInViewController ()<UITextFieldDelegate>

@end

@implementation LogInViewController{
    CGSize sizeView;
    FormTexfield*txtDNI;
    FormTexfield*txtPassword;
    NSArray*sendCategories;
    NSArray*sendSlider;
    FormTexfield*currentTextField;

}


- (void)viewDidLoad {
    [super viewDidLoad];

    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    [self.view addSubview:[self getBodyView]];
    [self.view addSubview:[self getFooterView]];
    // Do any additional setup after loading the view.
}
- (BOOL)prefersStatusBarHidden {
    return false;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
#pragma mark - Views
-(UIView*)getTopView{
    UIView*content = [[UIView alloc] init];
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
    [txtDNI setKeyboardType:UIKeyboardTypeAlphabet];
    [txtDNI setDelegate:self];
    
    [content addSubview:txtDNI];
    
    txtPassword = [[FormTexfield alloc] initWithFrame:CGRectMake(50, 100, sizeView.width-100, 35)];
   [txtPassword setDelegate:self];
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
    [btnEnter addTarget:self action:@selector(getLoginService:) forControlEvents:UIControlEventTouchUpInside];
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
    [btnOpenRegister addTarget:self action:@selector(openRegisterViewController:) forControlEvents:UIControlEventTouchUpInside];
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
    [btnOpenForget addTarget:self action:@selector(openForgetViewController:) forControlEvents:UIControlEventTouchUpInside];
    [content addSubview:btnOpenForget];

    
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
//    if (theTextField == txtDNI) {
//        if (theTextField.text.length ==8) {
//            [theTextField resignFirstResponder];
//            [txtPassword becomeFirstResponder];
//        }
//    }

}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    currentTextField = (FormTexfield*)textField;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == txtDNI) {
         [txtPassword becomeFirstResponder];
    }
    if (textField == txtPassword) {
        [textField resignFirstResponder];
    }
    return YES;
}
#pragma mark - Actions 
-(IBAction)openRegisterViewController:(id)sender{
    RegisterViewController * registerVC = [[RegisterViewController alloc] init];
    [self.navigationController pushViewController:registerVC animated:true];
}
-(IBAction)openForgetViewController:(id)sender{
    ForgetViewController * forgetVC = [[ForgetViewController alloc] init];
    [self.navigationController pushViewController:forgetVC animated:true];
}
-(IBAction)getLoginService:(id)sender{
    if (txtDNI.text.length>0&&txtPassword.text.length>0) {
        [currentTextField resignFirstResponder];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endPostGenerateToken:) name:@"endPostGenerateToken" object:nil];
        
        NSDictionary*params=@{PARAM_USERNAME:txtDNI.text,
                              PARAM_PASSWORD:txtPassword.text,
                              PARAM_GRANT_TYPE:@"password"};
        [[ProgressView sharedInstance] showInView:self.view withTitle:@"Verificando"];
        [[QueryWebService sharedInstance] getDataFromPath:FILE_TOKEN withMethod:POST withParamData:params withNotification:@"endPostGenerateToken"];
    }
  
}
-(void)loadHome{
    [[ProgressView sharedInstance] hide];
    AccountViewController*accountVC = [[AccountViewController alloc] init];

    UINavigationController*navAccount = [[UINavigationController alloc] initWithRootViewController:accountVC];
    navAccount.tabBarItem.title = NSLocalizedString(@"TITLE_TAB_ACCOUNT", nil);
    navAccount.tabBarItem.image = [UIImage imageNamed:@"accountTabBarIcon"];
    navAccount.tabBarItem.selectedImage = [[UIImage imageNamed:@"accountTabBarIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    navAccount.tabBarItem.image = [[UIImage imageNamed:@"accountTabBarIconOff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    
    navAccount.navigationBarHidden = true;

    QuestionViewController*questionVC = [[QuestionViewController alloc] init];
    UINavigationController*navQuestion = [[UINavigationController alloc] initWithRootViewController:questionVC];
    navQuestion.tabBarItem.title = NSLocalizedString(@"TITLE_TAB_QUESTION", nil);
    navQuestion.tabBarItem.selectedImage = [[UIImage imageNamed:@"questionTabBarIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    navQuestion.tabBarItem.image = [[UIImage imageNamed:@"questionTabBarIconOff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    
     navQuestion.navigationBarHidden = true;
    
    FavoriteViewController*favoriteVC = [[FavoriteViewController alloc] init];
    UINavigationController*navFavorite = [[UINavigationController alloc] initWithRootViewController:favoriteVC];
    navFavorite.tabBarItem.title = NSLocalizedString(@"TITLE_TAB_FAVORITE", nil);
    navFavorite.tabBarItem.selectedImage = [[UIImage imageNamed:@"favoriteTabBarIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    navFavorite.tabBarItem.image = [[UIImage imageNamed:@"favoriteTabBarIconOff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    
     navFavorite.navigationBarHidden = true;
    
    MessageViewController*meessageVC = [[MessageViewController alloc] init];
    UINavigationController*navMessage = [[UINavigationController alloc] initWithRootViewController:meessageVC];
    navMessage.tabBarItem.title = NSLocalizedString(@"TITLE_TAB_MESSAGE", nil);
    navMessage.tabBarItem.selectedImage = [[UIImage imageNamed:@"messageTabBarIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    navMessage.tabBarItem.image = [[UIImage imageNamed:@"messageTabBarIconOff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    
     navMessage.navigationBarHidden = true;
    //this windows load first with homeVC
    HomeViewController*homeVC = [[HomeViewController alloc] init];
    [homeVC setCategories:sendCategories];
    [homeVC setSlider:sendSlider];
    UINavigationController*navExchange = [[UINavigationController alloc] initWithRootViewController:homeVC];
    navExchange.tabBarItem.title = NSLocalizedString(@"TITLE_TAB_EXCHANGE", nil);
    navExchange.tabBarItem.selectedImage = [[UIImage imageNamed:@"exchangeTabBarIcon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    navExchange.tabBarItem.image = [[UIImage imageNamed:@"exchangeTabBarIconOff"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    
     navExchange.navigationBarHidden = true;
    
    UITabBarController*tab = [[UITabBarController alloc] init];
    tab.viewControllers=[NSArray arrayWithObjects:navExchange,navMessage,navFavorite,navQuestion,navAccount, nil];
    //[tab.view setBackgroundColor:[UIColor redColor]];
    CGRect frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width, 48);
    UIView *v = [[UIView alloc] initWithFrame:frame];
    [v setBackgroundColor:[UIColor colorFromHexString:@"91c3e1" withAlpha:0.2]];
    [v setAlpha:0.5];
    [tab.tabBar insertSubview:v atIndex:0];
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor colorFromHexString:@"2485c2" withAlpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName :  [UIFont fontAvenirLTStdLight:10],
                                                        NSForegroundColorAttributeName : [UIColor whiteColor]
                                                        } forState:UIControlStateSelected];
    
    // doing this results in an easier to read unselected state then the default iOS 7 one
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontAvenirLTStdLight:10],
                                                        NSForegroundColorAttributeName :[UIColor colorFromHexString:@"91c3e1" withAlpha:1]
                                                        } forState:UIControlStateNormal];
    
    [self.navigationController pushViewController:tab animated:true];
    
}
#pragma mark - Ntofications 
-(void)endPostGenerateToken:(NSNotification*)notification{

    if ([(NSDictionary*)notification.object objectForKey:@"error_description"]!=nil) {
         [[ProgressView sharedInstance] hide];
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
        alertViewController.title = [(NSDictionary*)notification.object objectForKey:@"error"];
        alertViewController.swipeDismissalGestureEnabled = YES;
        alertViewController.backgroundTapDismissalGestureEnabled = YES;
        
        alertViewController.message = [(NSDictionary*)notification.object objectForKey:@"error_description"];
        // Add alert actions
        [alertViewController addAction:[NYAlertAction actionWithTitle:NSLocalizedString(@"TITLE_BTN_ACCEPT", nil)
                                                                style:UIAlertActionStyleCancel
                                                              handler:^(NYAlertAction *action) {
                                                                  [self dismissViewControllerAnimated:YES completion:nil];
                                                              }]];
        [self presentViewController:alertViewController animated:true completion:nil];
    }else{
        [self loadCategories];
    }
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notification.name object:nil];
}
#pragma mark - Notifications
-(void)endGetCategories:(NSNotification*)notification{
    NSDictionary*categories = (NSDictionary*)notification.object;
    NSArray*data = [categories objectForKey:@"data"];
    NSLog(@"endGetCategories %@",categories);
    sendCategories = data;
  //  [self.view addSubview:[self getBodywithData:data]];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notification.name object:notification.object];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endGetSlider:) name:@"endGetSlider" object:nil];
    [[QueryWebService sharedInstance] getDataFromPath:FILE_SLIDERS withMethod:GET withParamData:nil withNotification:@"endGetSlider"];
}
-(void)endGetSlider:(NSNotification*)notification{
    NSDictionary*slider = (NSDictionary*)notification.object;
    NSArray*data = [slider objectForKey:@"data"];
    sendSlider = data;
    [self loadHome];
    NSLog(@"endGetSlider %@",slider);
  //  [self loadSlider:data];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:notification.name object:notification.object];
}
-(void)loadCategories{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endGetCategories:) name:@"endGetCategories" object:nil];
    [[QueryWebService sharedInstance] getDataFromPath:FILE_CATEGORIES withMethod:GET withParamData:nil withNotification:@"endGetCategories"];
  
}

@end
