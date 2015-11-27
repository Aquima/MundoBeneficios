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

#import <SDWebImage/UIImageView+WebCache.h>

#pragma ApiConsume
#import "QueryWebService.h"
#import "ApiConstants.h"

@interface HomeViewController (){
  
}

@end

@implementation HomeViewController{
     CGSize sizeView;
    UIView*contentSlide;
    UILabel*lblTitleslider;
    UILabel*lblContentSlider;
    UIImageView*contentImage;
    
    
    int currentIndexSlide;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    currentIndexSlide = 0;
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor redColor]];

    sizeView = self.view.frame.size;
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view setBackgroundColor:background];
    
    UIImageView*imgLogo = [[UIImageView alloc] initWithFrame:CGRectMake((sizeView.width-(80*1.5))/2, 30, 80*1.5, 35*1.5)];
    [imgLogo setImage:[UIImage imageNamed:@"logoMundoBeneficios"]];
    [self.view addSubview:imgLogo];
    
    [self.view addSubview:[self getBodywithData:_categories]];
    [self loadSlider:_slider];

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
#pragma mark - View
-(UIView*)getBodyOLD{
    UIScrollView*content = [[UIScrollView alloc] initWithFrame:CGRectMake(0,97, sizeView.width, sizeView.height-97-48)];
    
    [content setBackgroundColor:[UIColor clearColor]];
    [content setScrollEnabled:YES];
    [content setContentSize:CGSizeMake(320, 198+sizeView.width+sizeView.width)];
    
    contentSlide = [[UIView alloc] initWithFrame:CGRectMake(0, 0, sizeView.width, 198)];
    [contentSlide setBackgroundColor:[UIColor clearColor]];
    [content addSubview:contentSlide];
    
    contentImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, sizeView.width, 198)];
    [contentSlide addSubview:contentImage];
    
    lblTitleslider = [[UILabel alloc] initWithFrame:CGRectMake(10, contentSlide.frame.size.height-50, sizeView.width-10, 20)];
    [lblTitleslider setTextColor:[UIColor whiteColor]];
    [contentSlide addSubview:lblTitleslider];
    
    lblContentSlider = [[UILabel alloc] initWithFrame:CGRectMake(10, contentSlide.frame.size.height-30, sizeView.width-10, 20)];
    [lblContentSlider setTextColor:[UIColor whiteColor]];
    [contentSlide addSubview:lblContentSlider];
    
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
-(UIView*)getBodywithData:(NSArray*)data {
    UIScrollView*content = [[UIScrollView alloc] initWithFrame:CGRectMake(0,97, sizeView.width, sizeView.height-97-48)];
    
    [content setBackgroundColor:[UIColor clearColor]];
    [content setScrollEnabled:YES];
    [content setContentSize:CGSizeMake(320, 198+sizeView.width+sizeView.width)];
    
    contentSlide = [[UIView alloc] initWithFrame:CGRectMake(0, 0, sizeView.width, 198)];
    [contentSlide setBackgroundColor:[UIColor blackColor]];
    [content addSubview:contentSlide];
    
    contentImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, sizeView.width, 198)];
    [contentSlide addSubview:contentImage];
    
    lblTitleslider = [[UILabel alloc] initWithFrame:CGRectMake(10, contentSlide.frame.size.height-80, sizeView.width-10, 40)];
    [lblTitleslider setTextColor:[UIColor whiteColor]];
    [contentSlide addSubview:lblTitleslider];
    
    lblContentSlider = [[UILabel alloc] initWithFrame:CGRectMake(10, contentSlide.frame.size.height-40, sizeView.width-10, 40)];
    [lblContentSlider setTextColor:[UIColor whiteColor]];
    [contentSlide addSubview:lblContentSlider];
    
    int row=0;
    for (int i=0; i<data.count; i++) {
        NSDictionary*category = [data objectAtIndex:i];
        UIView*contentCategory;
        int n=i+1;
        if (n%3==0) {
            NSLog(@" 3=%d",n);
            contentCategory = [[UIView alloc] initWithFrame:CGRectMake(0, 198+(row+1)*sizeView.width/2, sizeView.width, sizeView.width/2)];
            [contentCategory setBackgroundColor:[UIColor colorFromHexString:[category objectForKey:@"color"] withAlpha:1]];
            row=row+2;
        }else if(n%2==0){
             NSLog(@" 2=%d",n);
                contentCategory = [[UIView alloc] initWithFrame:CGRectMake(0, 198+(row)*sizeView.width/2, sizeView.width/2, sizeView.width/2)];
                [contentCategory setBackgroundColor:[UIColor colorFromHexString:[category objectForKey:@"color"] withAlpha:1]];
            }else{
                contentCategory = [[UIView alloc] initWithFrame:CGRectMake(sizeView.width/2, 198+(row)*sizeView.width/2, sizeView.width/2, sizeView.width/2)];
                [contentCategory setBackgroundColor:[UIColor colorFromHexString:[category objectForKey:@"color"] withAlpha:1]];

             NSLog(@" 1=%d",n);
          
        }
        UIImageView*icon = [[UIImageView alloc] initWithFrame:CGRectMake((contentCategory.frame.size.width-70)/2, (contentCategory.frame.size.height-70)/2, 70, 70)];
        [contentCategory addSubview:icon];
        [icon setBackgroundColor:[UIColor redColor]];
        
        [icon sd_setImageWithURL:[NSURL URLWithString:@"http://www.domain.com/path/to/image.jpg"]
                          placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        
       
        UILabel*lblTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, contentCategory.frame.size.height-40, contentCategory.frame.size.width, 30)];
        [lblTitle setText:[category objectForKey:@"name"]];
        [lblTitle setTextAlignment:NSTextAlignmentCenter];
        [lblTitle setFont:[UIFont fontAvenirLTStdBook:18]];
        [lblTitle setTextColor:[UIColor whiteColor]];
        [contentCategory addSubview:lblTitle];
        
        [content addSubview:contentCategory];
    }
    //Nivel 0

    return content;
}
-(void)loadSlider:(NSArray*)data{
    if (data.count!=0) {
        if (currentIndexSlide<data.count) {
            currentIndexSlide=+1;
        }else{
            currentIndexSlide=0;
        }
        NSDictionary*dict = [data objectAtIndex:currentIndexSlide];
        [contentImage sd_setImageWithURL:[NSURL URLWithString:[dict objectForKey:@"image"]]
                        placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
        [lblTitleslider setText:[dict objectForKey:@"title"]];
        [lblContentSlider setText:[dict objectForKey:@"content"]];
        [self performSelector:@selector(loadSlider:) withObject:data afterDelay:3];
    }
}
@end
