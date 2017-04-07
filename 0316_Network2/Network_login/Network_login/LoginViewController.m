//
//  LoginViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 17..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "LoginViewController.h"
#import "DataCenter.h"
#import "NetworkModule.h"
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
    
    //open source
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
    
        [NetworkModule loginWithUsername:self.loginIDTextField.text
                            withPassword:self.loginPWTextField.text
                         completionBlock:^(BOOL isSuccess, NSDictionary *result) {
               
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
     }];
    
}

//************** Log Out

- (IBAction)selectedLogoutBtn:(id)sender {
    

    [NetworkModule logoutRequestCompletionBlock:^(BOOL isSuccess, NSDictionary *result) {
    
        if (isSuccess) {
            NSLog(@"isSuccess");
        } else {
            NSLog(@"error");
        }
    
        
    }];
    
    
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
