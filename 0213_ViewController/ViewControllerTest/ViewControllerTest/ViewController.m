//
//  ViewController.m
//  ViewControllerTest
//
//  Created by Hanson Jung on 2017. 2. 13..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"$$$$$$$$$$$$$");
    NSLog(@"viewDidLoad");
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"***********************");
    NSLog(@"viewWillAppear");
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    NSLog(@"***********************");
    NSLog(@"viewWillLayoutSubviews");
}


- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    NSLog(@"***********************");
    NSLog(@"viewDidLayoutSubviews");

}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"***********************");
    NSLog(@"viewDidAppear");

    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"%%%%%%%%");
    NSLog(@"viewDidDisappear");
    
}





@end
