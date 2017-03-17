//
//  LoginViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 17..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "LoginViewController.h"
#import "DataCenter.h"
@interface LoginViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *loginPWTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) UILabel * errorAlert;


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.loginIDTextField.delegate = self;
    self.loginPWTextField.delegate = self;
    
    
    self.loginIDTextField.tag = 10;
    self.loginPWTextField.tag = 20;
    
    // log in 실패 alert
    UILabel *errorAlert = [[UILabel alloc] initWithFrame:CGRectMake(100, 300, 250, 50)];
    errorAlert.textColor = [UIColor redColor];
    [errorAlert setFont:[UIFont systemFontOfSize:12]];
    self.errorAlert = errorAlert;
    [self.view addSubview:errorAlert];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectedLoginBtn:(UIButton *)sender {
    
    //NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"losangeles3", @"username", @"qqqqqqqq", @"password",nil];
    
    //session 객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    //Request 생성
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/login/"];
    //NSURL *url = [NSURL URLWithString:[NSSting stringWithFormat:@"%@%@",BASE-URL, LOGOUT_URL]];
    //api, logout url을 데이터센터에 모아놓은듯.
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    //data Data 생성
    //NSString *userName = [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];
    //NSString *passWord = [[NSUserDefaults standardUserDefaults] objectForKey:@"password"];
    //    NSString *userName = @"losangeles3";
    //    NSString *passWord = @"qqqqqqqq";
    
    
    
    NSString *noteDataString = [NSString stringWithFormat:@"username=%@&password=%@", self.loginIDTextField.text, self.loginPWTextField.text];
    
    //body data set
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    //post task 요청
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //응답에 대한 처리
        if (error == nil) {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"system success");
            //아이디나 패스워드가 틀렸을때도 이리 넘어왔는데 그건 로그인이 틀렸다는거지 시스템 에러라는 뜻이 아님.
            NSLog(@"%@", responsData);
            //completion(NO, responsData);
            [DataCenter sharedInstance].token = [responsData objectForKey:@"key"];
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            NSLog(@"statusCode %ld", statusCode);
            
            if ([DataCenter sharedInstance].token == nil) {
                NSLog(@"아이디 혹은 비밀번호를 다시 확인하세요.");
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.errorAlert.text = @"아이디 혹은 비밀번호를 다시 확인하세요.";
                });
                
            } else {
                self.errorAlert.text = @"";
            }
            
        } else {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"system error");
            NSLog(@"%@", responsData);
            //completion(YES, responsData);
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            NSLog(@"statusCode %ld", statusCode);
            
        }
    }];
    
    [postDataTask resume];
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField.tag == 10) {
        [self.loginPWTextField becomeFirstResponder];
        
    } else {
        [self.loginPWTextField resignFirstResponder];
        
    }
    
    return YES;
    
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
