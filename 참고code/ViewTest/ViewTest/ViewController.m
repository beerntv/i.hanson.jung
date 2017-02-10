//
//  ViewController.m
//  ViewTest
//
//  Created by youngmin joo on 2017. 2. 2..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

<MyViewDelegate>
//MyView.h에 선언한 프로토콜을 상속받아야만

@property UILabel *displayLB;
@property MyView *sdlfkjsdfView;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(40, 40, 100, 100)];
    myView.delegate = self;
    [self.view addSubview:myView];
    
    MyView *myView2 = [[MyView alloc] initWithFrame:CGRectMake(200, 40, 100, 100)];
    myView2.delegate = self;
    [self.view addSubview:myView2];
    
    self.displayLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 250, 100, 30)];
    self.displayLB.text = @"여기에 버튼이 타이틀이 표시될 거에요";
    [self.view addSubview:self.displayLB];
    
    
    self.sdlfkjsdfView = [[MyView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.sdlfkjsdfView.delegate = self;
    
    
}

//구현 클래스A의 구현부
- (void)didSelectedBtn:(UIButton *)btn
{
    self.displayLB.text = btn.titleLabel.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
