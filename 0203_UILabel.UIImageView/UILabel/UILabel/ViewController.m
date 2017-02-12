//
//  ViewController.m
//  UILabel
//
//  Created by Hanson Jung on 2017. 2. 3..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat margin = 10;
    CGFloat offsetX = margin;
    CGFloat offsetY = margin;
    
    
    //기본뷰
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width- 40, 90)];
    baseView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:baseView];
    
    //프로필
    UIImageView *profile = [[UIImageView alloc] initWithFrame:CGRectMake(offsetX, offsetY, 60, 60)];
//    profile.backgroundColor = [UIColor whiteColor];
    profile.image = [UIImage imageNamed:@"owl.png"];
    profile.contentMode = UIViewContentModeScaleToFill;
    [baseView addSubview:profile];
                       
    //라벨
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];

    
    //버튼
    offsetY = baseView.frame.size.height + margin + 20;
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(baseView.frame.size.width/2 - 50, offsetY, 100, 35);
    [testBtn setTitle:@"@@여기를 누르세요" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"==이제그만" forState:UIControlStateHighlighted];
    [testBtn addTarget:self action:@selector(didSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    

    
    
}

- (void)didSelectedBtn:(UIButton *)sender
                        {
                            NSLog(@"버튼을 클릭했습니다");
                            
                        }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
