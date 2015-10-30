//
//  HomeViewController.m
//  MundoBeneficios
//
//  Created by Raul Quispe on 10/29/15.
//  Copyright © 2015 Quima. All rights reserved.
//

#import "HomeViewController.h"
#import "UIColor+Hex.h"
#import "UIFont+AvenirLTStd.h"
#pragma mark - IconView
#import "IconHealtView.h"
#import "IconDiscountView.h"
#import "IconEntertainmentView.h"
#import "IconTechnologyView.h"
#import "IconTravelView.h"
#import "IconRestaurantView.h"

#pragma mark - SWRevealViewController
#import "SWRevealViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController{
     CGSize sizeView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor redColor]];

    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    
    [self.view addSubview:[self getBody]];
    
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
-(UIView*)getBody{
    UIScrollView*content = [[UIScrollView alloc] initWithFrame:CGRectMake(0,97, sizeView.width, sizeView.height-97-48)];
    
    [content setBackgroundColor:[UIColor clearColor]];
    [content setScrollEnabled:YES];
    [content setContentSize:CGSizeMake(320, 198+sizeView.width+sizeView.width)];
    
    UIView*contentSlide = [[UIView alloc] initWithFrame:CGRectMake(0, 0, sizeView.width, 198)];
    [contentSlide setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentSlide];
    
    
    //Nivel 0
    UIView*contentHealth = [[UIView alloc] initWithFrame:CGRectMake(0, 198, sizeView.width/2, sizeView.width/2)];
    [contentHealth setBackgroundColor:[UIColor colorFromHexString:@"4ad35c" withAlpha:1]];
    
    IconHealtView*iconHealth = [[IconHealtView alloc] initWithFrame:CGRectMake((contentHealth.frame.size.width-70)/2, (contentHealth.frame.size.height-70)/2, 70, 70)];
    [contentHealth addSubview:iconHealth];
    [iconHealth setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentHealth];
    UILabel*lblTitleHealth = [[UILabel alloc] initWithFrame:CGRectMake(0, contentHealth.frame.size.height-40, contentHealth.frame.size.width, 30)];
    [lblTitleHealth setText:@"SALUD"];
    [lblTitleHealth setTextAlignment:NSTextAlignmentCenter];
    [lblTitleHealth setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleHealth setTextColor:[UIColor whiteColor]];
    [contentHealth addSubview:lblTitleHealth];
    
    
    UIView*contentDiscount = [[UIView alloc] initWithFrame:CGRectMake(sizeView.width/2, 198, sizeView.width/2, sizeView.width/2)];
    [contentDiscount setBackgroundColor:[UIColor colorFromHexString:@"d54d6f" withAlpha:1]];
    
    IconDiscountView*iconDiscount = [[IconDiscountView alloc] initWithFrame:CGRectMake((contentDiscount.frame.size.width-70)/2, (contentDiscount.frame.size.height-70)/2, 70, 70)];
    [contentDiscount addSubview:iconDiscount];
    [iconDiscount setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentDiscount];
    UILabel*lblTitleDiscount = [[UILabel alloc] initWithFrame:CGRectMake(0, contentDiscount.frame.size.height-40, contentDiscount.frame.size.width, 30)];
    [lblTitleDiscount setText:@"DESCUENTO"];
    [lblTitleDiscount setTextAlignment:NSTextAlignmentCenter];
    [lblTitleDiscount setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleDiscount setTextColor:[UIColor whiteColor]];
    [contentDiscount addSubview:lblTitleDiscount];
    
    //Nivel 1
    UIView*contentEntertainment = [[UIView alloc] initWithFrame:CGRectMake(0,198+sizeView.width/2, sizeView.width, sizeView.width/2)];
    [contentEntertainment setBackgroundColor:[UIColor colorFromHexString:@"2b88ba" withAlpha:1]];
    
    IconEntertainmentView*iconEntertainment = [[IconEntertainmentView alloc] initWithFrame:CGRectMake((contentEntertainment.frame.size.width-70)/2, (contentEntertainment.frame.size.height-70)/2, 70, 70)];
    [contentEntertainment addSubview:iconEntertainment];
    [iconEntertainment setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentEntertainment];
    
    UILabel*lblTitleEntertainment = [[UILabel alloc] initWithFrame:CGRectMake(0, contentEntertainment.frame.size.height-40, contentEntertainment.frame.size.width, 30)];
    [lblTitleEntertainment setText:@"ENTRETENIMIENTO"];
    [lblTitleEntertainment setTextAlignment:NSTextAlignmentCenter];
    [lblTitleEntertainment setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleEntertainment setTextColor:[UIColor whiteColor]];
    [contentEntertainment addSubview:lblTitleEntertainment];
    
    //Nivel 2
    UIView*contentTravel = [[UIView alloc] initWithFrame:CGRectMake(0,198+sizeView.width, sizeView.width/2, sizeView.width/2)];
    [contentTravel setBackgroundColor:[UIColor colorFromHexString:@"aa9d24" withAlpha:1]];
    
    IconTravelView*iconTravel = [[IconTravelView alloc] initWithFrame:CGRectMake((contentTravel.frame.size.width-70)/2, (contentTravel.frame.size.height-70)/2, 70, 70)];
    [contentTravel addSubview:iconTravel];
    [iconTravel setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentTravel];
    
    UILabel*lblTitleTravel = [[UILabel alloc] initWithFrame:CGRectMake(0, contentTravel.frame.size.height-40, contentTravel.frame.size.width, 30)];
    [lblTitleTravel setText:@"VIAJES"];
    [lblTitleTravel setTextAlignment:NSTextAlignmentCenter];
    [lblTitleTravel setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleTravel setTextColor:[UIColor whiteColor]];
    [contentTravel addSubview:lblTitleTravel];
    
    
    UIView*contentRestaurant = [[UIView alloc] initWithFrame:CGRectMake(sizeView.width/2, 198+sizeView.width, sizeView.width/2, sizeView.width/2)];
    [contentRestaurant setBackgroundColor:[UIColor colorFromHexString:@"b0383b" withAlpha:1]];
    
    IconRestaurantView*iconRestaurant = [[IconRestaurantView alloc] initWithFrame:CGRectMake((contentRestaurant.frame.size.width-70)/2, (contentRestaurant.frame.size.height-70)/2, 70, 70)];
    [contentRestaurant addSubview:iconRestaurant];
    [iconRestaurant setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentRestaurant];
    
    UILabel*lblTitleRestaurant = [[UILabel alloc] initWithFrame:CGRectMake(0, contentRestaurant.frame.size.height-40, contentRestaurant.frame.size.width, 30)];
    [lblTitleRestaurant setText:@"RESTAURANTES"];
    [lblTitleRestaurant setTextAlignment:NSTextAlignmentCenter];
    [lblTitleRestaurant setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleRestaurant setTextColor:[UIColor whiteColor]];
    [contentRestaurant addSubview:lblTitleRestaurant];
    
    //Nivel 3
    UIView*contentTechnology = [[UIView alloc] initWithFrame:CGRectMake(0, 198+sizeView.width+sizeView.width/2,sizeView.width, sizeView.width/2)];
    [contentTechnology setBackgroundColor:[UIColor colorFromHexString:@"2e6fc5" withAlpha:1]];
   
    IconTechnologyView*iconTechnology = [[IconTechnologyView alloc] initWithFrame:CGRectMake((contentTechnology.frame.size.width-70)/2, (contentTechnology.frame.size.height-70)/2, 70, 70)];
    [contentTechnology addSubview:iconTechnology];
    [iconTechnology setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentTechnology];
    
    UILabel*lblTitleTechnology = [[UILabel alloc] initWithFrame:CGRectMake(0, contentTechnology.frame.size.height-40, contentTechnology.frame.size.width, 30)];
    [lblTitleTechnology setText:@"TECNOLOGIA"];
    [lblTitleTechnology setTextAlignment:NSTextAlignmentCenter];
    [lblTitleTechnology setFont:[UIFont fontAvenirLTStdBook:18]];
    [lblTitleTechnology setTextColor:[UIColor whiteColor]];
    [contentTechnology addSubview:lblTitleTechnology];

    
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

@end
