//
//  ViewController.m
//  0213_HarshadNumber
//
//  Created by Hanson Jung on 2017. 2. 13..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");
  
    // harshad number란 (수) / (자리수의 합) = 정수
    // ex) 12 / (1+2) = 4 이므로 12는 harshad number

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    textField.borderStyle = UITextBorderStyleLine;
    textField.delegate = self;
    [self.view addSubview:textField];
    
    //레이블
    UILabel *resultText = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    



}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    //입력텍스트를 정수로 바꾸고 intValue
    NSString *string1 = textField.text;
    NSInteger num1 = [string1 integerValue];
    NSInteger denomenator = num1 / 10 + num1 % 10;
    
    NSInteger result = num1 / denomenator;
    
    NSLog(@"%ld", result);
    
    return YES;
    
    //바꾼

    
}




- (void)loadView
{
    [super loadView];
    
    NSLog(@"loadView");
}





- (void)viewWillAppear:animated {
    [super viewWillAppear:animated];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    NSLog(@"viewWillLayoutSubviews");
}

- (void)viewDidAppear:animated
{
    [super viewDidAppear:animated];

    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (void)viewDidDisapper:animated
{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisapper");
}






//
//- (void)textFieldDidEndEditing:(UITextField *)textField
//{
//    
//    
//    
//}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
