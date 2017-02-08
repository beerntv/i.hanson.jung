//
//  ViewController.m
//  0207_LogIn2
//
//  Created by Hanson Jung on 2017. 2. 7..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //UIView 베이스뷰
    //뷰 생성
    UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    //뷰 색상
    base.backgroundColor = [UIColor colorWithRed:235/255.0f green:60/255.0f blue:100/255.0f alpha:1];
    //뷰 얹기
    [base addSubview:self.view];
    
    //UILabel 레이블
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    //UIFont 폰트
    title.font = [UIFont fontWithName:@"helveticaNeue" size:30];
    //색상
    title.textColor = [UIColor colorWithRed:175/255.0f green:235/255.0f blue:229/255.0f alpha:1];
    //UILabel 얹기
    [base addSubview:title];
    
    
    //TextField 텍스트필드
    
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
