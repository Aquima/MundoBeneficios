//
//  HomeViewController.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "HomeViewController.h"

#pragma mark - SWRevealViewController
#import "SWRevealViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController{
    SWRevealViewController *revealController;
     CGSize sizeView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor redColor]];
    revealController = [self revealViewController];
    [revealController panGestureRecognizer];
    [revealController tapGestureRecognizer];
    
    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
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

@end
