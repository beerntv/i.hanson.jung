//
//  ViewController.m
//  0206_TextField
//
//  Created by Hanson Jung on 2017. 2. 6..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate, UIScrollViewDelegate>

@property UITextField *textF1;
@property UITextField *textF2;
@property UILabel *resultText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *base = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    base.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:base];
    
    //UITextField 객체를 생성했는데 viewDidLoad 구현부 밖으로는 불러내지 못하니까 밖에서 객체를 쓰기위해 프로퍼티 생성해주고 self.textF1으로 전환하였다.
    self.textF1 = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 200, 30)];
    self.textF1.font = [UIFont systemFontOfSize:15];
    self.textF1.textColor = [UIColor orangeColor];
    self.textF1.textAlignment = NSTextAlignmentCenter;
    self.textF1.borderStyle = UITextBorderStyleRoundedRect;
    self.textF1.placeholder = @"텍스트 입력";
    self.textF1.delegate = self;
    //텍스트필드에 쓴 내용을 레이블로 불러내고 싶은데 리턴 또는 버튼을 누르면 레이블에 쓰여지도록 하고싶다.
    //텍스트필드는 뷰콘트롤러의 하부인데 텍스트필드에 속한 리턴이 되려 뷰콘트롤러에게 뭔가 명령하고 싶다.
    //"리턴누르면 레이블에 쓰게 해줘"
    //"원래는 니말은 안듣는데 프로토콜을 쓰면 해주지. 뭘할지는 니가 정해"
    //-(BOOL)textFieldShouldReturn 이걸하면 텍스트필드.텍스트가 레이블.텍스트에 쓰여지도록 하겠어.
//delegate를 쓰기위해선 <UITextFieldDelegate> 선언해야 한다.
    //니가 뭔 메서드를 명령할지 모르지만 일단 담아둘게. 저쪽에서 그걸 찾으면 주도록 하지
    [base addSubview:self.textF1];

    //2번째 텍스트필드
    self.textF2 = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 200, 30)];
    self.textF2.font = [UIFont systemFontOfSize:15];
    self.textF2.textColor = [UIColor orangeColor];
    self.textF2.textAlignment = NSTextAlignmentCenter;
    self.textF2.borderStyle = UITextBorderStyleRoundedRect;
    self.textF2.placeholder = @"텍스트 입력";
    self.textF2.delegate = self;
    [base addSubview:self.textF2];
    
//버튼
    UIButton *done = [UIButton buttonWithType:UIButtonTypeCustom];
    done.frame = CGRectMake(300, 50, 50, 30);
    done.backgroundColor = [UIColor whiteColor];
    
    //액션추가
    [done addTarget:self
             action:@selector(clickBtn:)
   forControlEvents:UIControlEventTouchUpInside];
    //제목설정
    [done setTitle:@"확인"
          forState:UIControlStateNormal];
    [done setTitleColor:[UIColor blueColor]
               forState:UIControlStateNormal];
    [done setTitleColor:[UIColor blackColor]
               forState:UIControlStateHighlighted];
    //뷰 추가
    [base addSubview:done];
    
//레이블
    //레이블도 텍스트필드와 마찬가지로 외부에서 쓰기위해 프로퍼티를 만든후 self.resultText로 전환하였다.
    self.resultText = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 200, 30)];

    //레이블 텍스트 설정
    self.resultText.text = @"결과:텍스트 입력";
    //레이블 컬러
    self.resultText.textColor =  [UIColor blueColor];
    //레이블 정렬
    self.resultText.textAlignment = NSTextAlignmentCenter;
    
    //addSubview
    [base addSubview:self.resultText];
     
    
    
    


    
    
    
}


- (void)clickBtn:(UIButton *)done
{
    self.resultText.text = self.textF1.text;
    [self.textF1 resignFirstResponder];
    self.textF1.text = @"";
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.resultText.text = self.textF1.text;
    [textField resignFirstResponder];
    self.textF1.text = @"";
    return YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
