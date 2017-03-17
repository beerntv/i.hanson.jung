//
//  SignupViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 16..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "SignupViewController.h"
#import "DataCenter.h"

@interface SignupViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *signupIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *signupPWTextfield;
@property (weak, nonatomic) IBOutlet UITextField *signupPWAgainTextfield;
@property (weak, nonatomic) IBOutlet UIButton *signupBtn;



@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.signupIDTextField.delegate = self;
    self.signupPWTextfield.delegate = self;
    self.signupPWAgainTextfield.delegate = self;
    
    self.signupIDTextField.tag = 10;
    self.signupPWTextfield.tag = 20;
    self.signupPWAgainTextfield.tag = 30;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectedSignupBtn:(UIButton *)sender {
    
    
    
    //NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"losangeles3", @"username", @"qqqqqqqq", @"password",nil];
    
    //session 객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    //Request 생성
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/signup/"];
    //NSURL *url = [NSURL URLWithString:[NSSting stringWithFormat:@"%@%@",BASE-URL, LOGOUT_URL]];
    //api, logout url을 데이터센터에 모아놓은듯.
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //data Data 생성
    //NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];
    //NSString *passWord = [[NSUserDefaults standardUserDefaults] objectForKey:@"password"];
    //    NSString *userName = @"losangeles3";
    //    NSString *passWord = @"qqqqqqqq";
    
    
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password1=%@&password2=%@", self.signupIDTextField.text, self.signupPWTextfield.text, self.signupPWAgainTextfield.text];
    NSLog(@"network %@", self.signupIDTextField.text);
    //body data set
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    //post task 요청
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //응답에 대한 처리
        if (error == nil) {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"system success");
            //아이디나 패스워드가 틀렸을때도 이리 넘어왔는데 그건 로그인이 틀렸다는 거지 시스템 에러라는 뜻이 아님.
            NSLog(@"%@", responsData);
            //completion(NO, responsData);
            
        } else {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"system error");
            NSLog(@"%@", responsData);
            
            //completion(YES, responsData);
        }
    }];
    
    [postDataTask resume];
    NSLog(@"resume %@", self.signupIDTextField.text);

    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 10) {
        [self.signupPWTextfield becomeFirstResponder];
        
    } else if (textField.tag == 20){
        
        [self.signupPWAgainTextfield becomeFirstResponder];
    } else {
        [self.signupPWAgainTextfield resignFirstResponder];
        
    }
    
    NSLog(@"shouldReturn %@", self.signupIDTextField.text);
    return YES;
//    userName = self.signupIDTextField.text;
//    passWord1 = self._signupPWTextfield.text;
//    passWord2 = self.signupPWAgainTextfield.text;
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
