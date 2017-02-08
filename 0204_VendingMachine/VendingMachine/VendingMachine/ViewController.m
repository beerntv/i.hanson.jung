//
//  ViewController.m
//  VendingMachine
//
//  Created by Hanson Jung on 2017. 2. 4..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"
#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Calculator *custom = [[Calculator alloc] init];
    
    //image base
    UIImageView *baseView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    baseView.image = [UIImage imageNamed:@"base.png"];
    baseView.contentMode = UIViewContentModeScaleToFill;
    [self.view addSubview:baseView];
    
    //금액 display
    UIView *display2 = [[UIView alloc] initWithFrame:CGRectMake(218, 155, 140, 45)];
    display2.backgroundColor = [UIColor darkGrayColor];
    [baseView addSubview:display2];
    
    UIView *display = [[UIView alloc] initWithFrame:CGRectMake(2, 2, 136, 41)];
    display.backgroundColor = [UIColor blackColor];
    [display2 addSubview:display];
    

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 100, 10)];
    [label setText:@"돈넣어!!"];
    [label setFont:[UIFont fontWithName:@"Georgia-Bold" size:15.0f]];
//    [label setTextColor:[UIColor colorWithRed:178.0f/255.0f green:24.0f/255.0f blue:137.0f/255.0f alpha:1.0f]];
    [label setHighlightedTextColor:[UIColor redColor]];
    [label setHighlighted:YES];
    [display2 addSubview:label];
    
    
    
    //상품진열
    UIView *product1 = [[UIView alloc] initWithFrame:CGRectMake(40, 66, 60, 165)];
    product1.backgroundColor = [UIColor lightGrayColor];
    [baseView addSubview:product1];
    
    UIImageView *coke = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 50, 155)];
    coke.image = [UIImage imageNamed:@"coke.jpg"];
    coke.contentMode = UIViewContentModeScaleToFill;
    [product1 addSubview:coke];
    
    
    UIView *product2 = [[UIView alloc] initWithFrame:CGRectMake(40, 261, 60, 165)];
    product2.backgroundColor = [UIColor lightGrayColor];
    [baseView addSubview:product2];
    
    UIImageView *evian = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 50, 155)];
    evian.image = [UIImage imageNamed:@"evian.jpg"];
    evian.contentMode = UIViewContentModeScaleToFill;
    [product2 addSubview:evian];
    
    //금액
    UIView *moneyBase = [[UIView alloc] initWithFrame:CGRectMake(40, 530, 305, 60)];
    moneyBase.backgroundColor = [UIColor colorWithRed:70.0f/255.0f green:5.0f/255.0f blue:5.0f/255.0f alpha:1.0f];
    [self.view addSubview:moneyBase];
    
    UIView *coin1 = [[UIView alloc] initWithFrame:CGRectMake(45, 535, 70, 50)];
    coin1.backgroundColor = [UIColor colorWithRed:111.0f/255.0f green:9.0f/255.0f blue:9.0f/255.0f alpha:1.0f];
    [self.view addSubview:coin1];
    
    UIView *coin2 = [[UIView alloc] initWithFrame:CGRectMake(120, 535, 70, 50)];
    coin2.backgroundColor = [UIColor colorWithRed:111.0f/255.0f green:9.0f/255.0f blue:9.0f/255.0f alpha:1.0f];
    [self.view addSubview:coin2];
    
    UIView *coin3 = [[UIView alloc] initWithFrame:CGRectMake(195, 535, 70, 50)];
    coin3.backgroundColor = [UIColor colorWithRed:111.0f/255.0f green:9.0f/255.0f blue:9.0f/255.0f alpha:1.0f];
    [self.view addSubview:coin3];
    
    UIView *coin4 = [[UIView alloc] initWithFrame:CGRectMake(270, 535, 70, 50)];
    coin4.backgroundColor = [UIColor colorWithRed:111.0f/255.0f green:9.0f/255.0f blue:9.0f/255.0f alpha:1.0f];
    [self.view addSubview:coin4];
    
    jㄴ
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
