//
//  ViewController.m
//  IOS_Structure
//
//  Created by Hanson Jung on 2017. 2. 2..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
// 시작지점. main( ) 같은 역할
    
    
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];

    firstView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:firstView];
    
    UIView *firstView3 = [[UIView alloc] initWithFrame:CGRectMake(15, 115, 345, 100)];
    
    firstView3.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView3];
    
    UIView *firstView4 = [[UIView alloc] initWithFrame:CGRectMake(15, 215, 345, 100)];
    
    firstView4.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:firstView4];
    
    
    UIView *firstView2 = [[UIView alloc] initWithFrame:CGRectMake(15, self.view.frame.size.height-110, 345, 100)];
    
    firstView2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:firstView2];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end















//수업
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 300)];
//
//    myView.backgroundColor = [UIColor blueColor];
//    //1
//    myView.clipsToBounds = YES;
//    [self.view addSubview:myView];
//
//    UIView *subView = [[UIView alloc] init];
//    subView.frame = CGRectMake(10, 30, 200, 200);
//    [subView setBackgroundColor:[UIColor redColor]];
//    //1과 같은 말
//
//
////    [myView addSubview:subView];
//    [self.view addSubview:subView];
//
