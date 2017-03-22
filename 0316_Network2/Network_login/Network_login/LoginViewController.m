//
//  LoginViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 17..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "LoginViewController.h"
#import "DataCenter.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface LoginViewController ()
<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *loginIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *loginPWTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton *logoutBtn;
@property (weak, nonatomic) UILabel * errorAlert;
@property (nonatomic) UIImageView *imageView;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
//    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://www.domain.com/path/to/image.jpg"] placeholderImage:@"placeholder.png"];
    
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.imageView];
    [self.view sendSubviewToBack:self.imageView];
    
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://t1.daumcdn.net/news/201703/21/newsen/20170321120218772uxeg.jpg"]
                 placeholderImage:[UIImage imageNamed:@"111.jpg"]];
    
    // Do any additional setup after loading the view.
    self.loginIDTextField.delegate = self;
    self.loginPWTextField.delegate = self;
    
    
    self.loginIDTextField.tag = 10;
    self.loginPWTextField.tag = 20;
    
    // log in 실패 alert
//    UILabel *errorAlert = [[UILabel alloc] initWithFrame:CGRectMake(100, 350, 250, 50)];
//    errorAlert.textColor = [UIColor redColor];
//    [errorAlert setFont:[UIFont boldSystemFontOfSize:12]];
//    self.errorAlert = errorAlert;
//    [self.view addSubview:errorAlert];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

//************** Log In


- (IBAction)selectedLoginBtn:(UIButton *)sender {
    
    NSLog(@"selectedLoginBtn");
    
    //NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:@"losangeles3", @"username", @"qqqqqqqq", @"password",nil];
    
    //session 객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    //Request 생성
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/login/"];
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
            NSLog(@"log in success");
            //아이디나 패스워드가 틀렸을때도 이리 넘어왔는데 그건 로그인이 틀렸다는거지 시스템 에러라는 뜻이 아님.
            NSLog(@"%@", responsData);
            //completion(NO, responsData);
            [DataCenter sharedInstance].token = [responsData objectForKey:@"key"];
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            NSLog(@"statusCode %ld", statusCode);
            
            if ([DataCenter sharedInstance].token == nil) {
                NSLog(@"아이디 혹은 비밀번호를 다시 확인하세요.");
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    //self.errorAlert.text = @"아이디 혹은 비밀번호를 다시 확인하세요.";
                    
                    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"어맛!"
                                                                                             message:@"아이디 또는 비밀번호가 틀렸네요"
                                                                                      preferredStyle:UIAlertControllerStyleAlert];
                    
                    UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인"
                                                                       style:UIAlertActionStyleDefault
                                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                                         NSLog(@"확인버튼이 클릭되었습니다");
                                                                     }];
                    [alertController addAction:okButton];
                    
                    [self presentViewController:alertController animated:YES completion:nil];
                    
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

//************** Log Out

- (IBAction)selectedLogoutBtn:(id)sender {
    
    //session 객체 생성
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    //Request 생성
    NSURL *url = [NSURL URLWithString:@"https://fc-ios.lhy.kr/api/member/logout/"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setValue:[NSString stringWithFormat:@"token %@", [DataCenter sharedInstance].token] forHTTPHeaderField:@"Authorization"];
    
    //body data set
    request.HTTPBody = [@""  dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    
    //post task 요청
    NSURLSessionUploadTask *postDataTask = [session uploadTaskWithRequest:request fromData:nil completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //응답에 대한 처리
        if (error == nil) {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"log out success");
            //아이디나 패스워드가 틀렸을때도 이리 넘어왔는데 그건 로그인이 틀렸다는거지 시스템 에러라는 뜻이 아님.
            NSLog(@"%@", responsData);
            
            NSInteger statusCode = [(NSHTTPURLResponse *)response statusCode];
            NSLog(@"statusCode %ld", statusCode);
            
            
        } else {
            NSDictionary *responsData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
            NSLog(@"logout system error");
            NSLog(@"%@", responsData);
            
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
