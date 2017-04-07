//
//  SignUpViewController.m
//  0207_LogIn
//
//  Created by Hanson Jung on 2017. 2. 20..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property UITextField *tf1;
@property UITextField *tf2;
@property UIScrollView *scrollView;



@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = @"my vc";

    
    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
    [back setBackgroundImage:[UIImage imageNamed:@"backIcon"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
    self.navigationItem.leftBarButtonItem = item;
    
    
    // 베이스 뷰
    // 레이블
    // 스크롤
    // 텍스트필드1
    // 테두리 변경
    // 텍스트필드2
    // 테두리 변경
    
    //베이스
    UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    base.backgroundColor = [UIColor colorWithRed:40/255.0f green:190/255.0f blue:230/255.0f alpha:1.0];
    [self.view addSubview:base];
    
    
    //레이블
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 200, 30)];
    [label1 setText:@"SignUp Page"];
    [label1 setFont:[UIFont boldSystemFontOfSize:20]];
    [base addSubview:label1];
    [label1 setTextColor:[UIColor blackColor]];
    [label1 setTextAlignment:NSTextAlignmentCenter];
    [base addSubview:label1];
    
    //스크롤뷰
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    //컨텐츠사이즈 조정
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width, self.scrollView.frame.size.height*2)];
    //델리게이트 설정
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    [self.view addSubview:self.scrollView];
    self.scrollView.scrollEnabled = NO;
    
    
    //텍스트필드 1
    CGFloat offsetX;
    offsetX = (self.scrollView.frame.size.width - self.tf1.frame.size.width)/2;
    self.tf1 = [[UITextField alloc] initWithFrame:CGRectMake(offsetX, 100, 200, 30)];

    
    self.tf1.font = [UIFont systemFontOfSize:13];
    self.tf1.backgroundColor = [UIColor whiteColor];
    self.tf1.textColor = [UIColor lightGrayColor];
    self.tf1.textAlignment = NSTextAlignmentLeft;
    //테두리변경
    self.tf1.borderStyle = UITextBorderStyleRoundedRect;
    self.tf1.placeholder = @"  ID";
    self.tf1.delegate = self;
    [self.scrollView addSubview:self.tf1];
    self.tf1.tag = 10;
    
    
    //텍스트필드 2
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 150, 200, 30)];
    self.tf2.font = [UIFont systemFontOfSize:13];
    self.tf2.textColor = [UIColor lightGrayColor];
    self.tf2.backgroundColor = [UIColor whiteColor];
    self.tf2.textAlignment = NSTextAlignmentLeft;
    //테두리변경
    //self.tf2.borderStyle = UITextBorderStyleLine;
    self.tf2.borderStyle = UITextBorderStyleRoundedRect;
    self.tf2.placeholder = @"  PASSWORD";
    self.tf2.delegate = self;
    [self.scrollView addSubview:self.tf2];
    self.tf2.tag = 20;
    
    
    
    //레이블 "로그인" "회원가입"
    UILabel *login = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    [login setText:@"로그인      회원가입"];
    [login setFont:[UIFont boldSystemFontOfSize:12]];
    [self.scrollView addSubview:login];
    [login setTextAlignment:NSTextAlignmentCenter];
    
    //회원가입 버튼 다음페이지
    UIButton *signupBtn = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 200, 30)];
    //addTarget
    [signupBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    //setTitle
    [signupBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [signupBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [signupBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    //addSubview
    [self.view addSubview:signupBtn];
    
    
    ////////////////
    
    
    
    // 버튼
//    UIButton *nextButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 100, 40)];
//    [nextButton addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [nextButton setTitle:@"빽 by xib" forState:UIControlStateNormal];
//    [nextButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [nextButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
//    [self.view addSubview:nextButton];
    
}

- (void)backBtnClick:(UIButton *)sender {
    
    NSLog(@"back log");
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void)onSelectedBtn:(UIButton *)sender {
    //이전페이지로 이동. 내리기
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
