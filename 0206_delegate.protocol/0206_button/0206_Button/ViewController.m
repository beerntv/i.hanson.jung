//
//  ViewController.m
//  0206_Button
//
//  Created by Hanson Jung on 2017. 2. 6..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *l1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    UIButton *btn1 = [[UIButton alloc] init];
//    btn1.buttonType = UIButtonTypeCustom; >> readonly property
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn1.frame = CGRectMake(50, 50, 100, 30);
    [btn1 setTitle:@"노멀" forState:UIControlStateNormal];
    [btn1 setTitle:@"하일라이트" forState:[[UIControlStateHighlighted];
                                      
    [self.view addSubview:btn1];
    [self.view addSubview:btn1];
                                   
    
    UIButton *b1 = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    b1.backgroundColor = [UIColor redColor];
    [b1 addTarget:self action:@selector(didClickBottomBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:b1];

    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    l1.textAlignment = NSTextAlignmentCenter;
    l1.textColor = [UIColor blackColor];
    l1.text = @"1번버튼";
    [b1 addSubview:l1];
    
    
    UIButton *b2 = [[UIButton alloc] initWithFrame:CGRectMake(200, 50, 100, 100)];
    b2.backgroundColor = [UIColor redColor];
    [self.view addSubview:b2];
    
    UILabel *l2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    l2.textAlignment = NSTextAlignmentCenter;
    l2.textColor = [UIColor blackColor];
    l2.text = @"2번버튼";
    [b2 addSubview:l2];
    
    
    UIButton *b3 = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    b3.backgroundColor = [UIColor redColor];
    [self.view addSubview:b3];
    
    UILabel *l3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    l3.textAlignment = NSTextAlignmentCenter;
    l3.textColor = [UIColor blackColor];
    l3.text = @"3번버튼";
    [b3 addSubview:l3];
    
    UIButton *b4 = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
    b4.backgroundColor = [UIColor redColor];
    [self.view addSubview:b4];
   
    UILabel *l4 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    l4.textAlignment = NSTextAlignmentCenter;
    l4.textColor = [UIColor blackColor];
    l4.text = @"4번버튼";
    [b4 addSubview:l4];
    
    
    UILabel *log1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 350, self.view.frame.size.width -150, 50)];
    log1.center = CGPointMake(self.view.center.x, 400);
    log1.textAlignment = NSTextAlignmentCenter;
    log1.text = [NSString stringWithFormat:@"%d번 버튼을 클릭했습니다", 2];
    [self.view addSubview:log1];
    
    
    
    
    
}

- (void)didClickBottomBtn:(UIButton *)sender
{
    
    self.l1.textColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
