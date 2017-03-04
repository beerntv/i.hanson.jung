//
//  ViewController.m
//  UIViewController
//
//  Created by Hanson Jung on 2017. 2. 20..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "XecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIButton *nextButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
//    [nextButton addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [nextButton setTitle:@"next" forState:UIControlStateNormal];
//    [nextButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [nextButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
//    [self.view addSubview:nextButton];
    
    
    
    UIButton *nextButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
    [nextButton addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [nextButton setTitle:@"To SeconControllView" forState:UIControlStateNormal];
    [nextButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [nextButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.view addSubview:nextButton];
    
    
    
}


- (void)onSelectedBtn:(UIButton *)sender {
    
    //***************** 스토리 보드 사용법
    //스토리보드에서 viewController 만든후 생성한 클래스파일을 custom class, identity를 입력(연결)해준다.
    //다음페이지로 이동
    //1. 스토리보트 객체 만들기
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    // 스토리보드에 있는 identity에 있는 

                                
    //2. 뷰컨트롤러 객체 만들기
    //SecondViewController *sVC = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
                                
                                
    //3. 페이지 전환
    //[self presentViewController:sVC animated:YES completion:nil];
    
    //********************* xib 사용법
    //xib파일 생성시 'also create xib' 체크박스에 체크해준다
    //뷰컨트롤러 객체 만들기
    XecondViewController *xVC = [[XecondViewController alloc] initWithNibName:@"XecondViewController" bundle:nil];
    //XecondViewController *xVC = [XecondViewController alloc] init];

    //3.페이지 전환
    [self presentViewController:xVC animated:YES completion:nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
