//
//  ViewController.m
//  0207_LogIn
//
//  Created by Hanson Jung on 2017. 2. 7..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"
#import "SignUpViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property UITextField *tf1;
@property UITextField *tf2;
@property UIScrollView *scrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//1334 x 750
    
    //네비게이션 바버튼
    self.navigationItem.title = @"my vc";
    //[self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
//    UIButton *back = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 35, 35)];
//    [back setBackgroundImage:[UIImage imageNamed:@"backIcon"] forState:UIControlStateNormal];
//    [back addTarget:self action:@selector(backBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:back];
//    self.navigationItem.leftBarButtonItem = item;

    
    
    
    
    
    
    //베이스
    UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    base.backgroundColor = [UIColor colorWithRed:40/255.0f green:190/255.0f blue:230/255.0f alpha:1.0];
    [self.view addSubview:base];
    
    
    //레이블
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 200, 30)];
    [label1 setText:@"Log In Page"];
    [label1 setFont:[UIFont boldSystemFontOfSize:20]];
    [base addSubview:label1];
    [label1 setTextColor:[UIColor blackColor]];
    [label1 setTextAlignment:NSTextAlignmentCenter];
    [base addSubview:label1];
     
    //스크롤뷰
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    //컨텐츠사이즈 조정
    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width, self.scrollView.frame.size.height*2)];
    //델리게이트 설정
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    [self.view addSubview:self.scrollView];
    self.scrollView.scrollEnabled = NO;
    
    
    //텍스트필드 1
    self.tf1 = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    self.tf1.font = [UIFont systemFontOfSize:13];
    self.tf1.backgroundColor = [UIColor whiteColor];
    self.tf1.textColor = [UIColor lightGrayColor];
    self.tf1.textAlignment = NSTextAlignmentLeft;
    //테두리변경
    self.tf1.borderStyle = UITextBorderStyleLine;
    self.tf1.placeholder = @"  ID";
    self.tf1.delegate = self;
    [self.scrollView addSubview:self.tf1];
    self.tf1.tag = 10;
    
    
    //텍스트필드 2
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 250, 200, 30)];
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
    UILabel *login = [[UILabel alloc] initWithFrame:CGRectMake(50, 300, 200, 30)];
    [login setText:@"로그인"];
    [login setFont:[UIFont boldSystemFontOfSize:12]];
    [self.scrollView addSubview:login];
    [login setTextAlignment:NSTextAlignmentCenter];
    
    //회원가입 버튼 다음페이지
    UIButton *signupBtn = [[UIButton alloc] initWithFrame:CGRectMake(150, 300, 200, 30)];
    //addTarget
    [signupBtn addTarget:self action:@selector(onSelectedBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    //setTitle
    [signupBtn setTitle:@"회원가입" forState:UIControlStateNormal];

    [signupBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [signupBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    //addSubview
    [self.scrollView addSubview:signupBtn];
    
    
    //AlertController 만들기
    // AlertController 생성
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"경고"
                                                                             message:@"잘못입력했습니다" preferredStyle:UITableViewCellStyleValue1];
    
    //AlertController 액션버튼객체 생성
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UITableViewCellStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"ok버튼이 클릭되었습니다");
        
                                                     }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                           style:UIAlertActionStyleCancel
                                                                  handler:nil];
    
    //UIGestureRecognizer
    
    
    
}


//- (void)backBtnClick:(UIButton *)sender {
//    
//    NSLog(@"back log");
//    [self.navigationController popViewControllerAnimated:YES];
//    
//}


    
    



- (void)onSelectedBtn:(UIButton *)sender {
    
    
    //뷰컨트롤러 객체 만들기
    SignUpViewController *SigupVC = [[SignUpViewController alloc] initWithNibName:@"SignUpViewController" bundle:nil];
     //페이지전환
    [self.navigationController pushViewController:SigupVC animated:YES];
   
    
}

     
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (textField.tag == 10) {
        [self.tf2 becomeFirstResponder];
        
        
        
    }else {
        [self.tf2 resignFirstResponder];
        
    }
    
    return YES;
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    [self.scrollView setContentOffset:CGPointMake(0,50) animated:YES];
     
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
