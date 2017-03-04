//
//  ViewController.m
//  Navi1
//
//  Created by Hanson Jung on 2017. 2. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //네비게이션 바버튼
    self.navigationItem.title = @"my vc";
    //[self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
    [back setBackgroundImage:[UIImage imageNamed:@"backIcon"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
    

}

- (void)backBtnClick:(UIButton *)sender {
    
    NSLog(@"back log");
    [self.navigationController popViewControllerAnimated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
