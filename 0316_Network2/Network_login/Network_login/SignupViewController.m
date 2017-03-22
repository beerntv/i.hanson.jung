//
//  SignupViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 16..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "SignupViewController.h"
#import "DataCenter.h"
#import "NetworkModule.h"

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

//*********** Sign up

- (IBAction)selectedSignupBtn:(UIButton *)sender
{
    
    [NetworkModule signpWithUsername:self.signupIDTextField.text
                        withPassword:self.signupPWTextfield.text
                 withPasswordReEnter:self.signupPWAgainTextfield.text
                     completionBlock:^(BOOL isSuccess, NSDictionary *result)
     {
         
         if(isSuccess)
         {
             NSLog(@"token : %@", [DataCenter sharedInstance].token);
             
             dispatch_async(dispatch_get_main_queue(), ^{        // 이 부분 메인 스레드 돌여야 하는 이유?
                 
                 // dismiss한 후 Login VC viewWillAppear에서 바로 Token 값 nil 체크해서, nil이 아닐시 main VC로 넘어가게 되어있음
                 [self dismissViewControllerAnimated:YES completion:nil];
                 
                 //                [self.indicatorView setHidden:YES];
                 //                [self.indicator stopAnimating];
                 
             });
             
         } else {
             NSLog(@"%@", result);
             
             dispatch_async(dispatch_get_main_queue(), ^{
                 //                    self.errorAlert.text = @"아이디 혹은 비밀번호를 다시 확인하세요.";
                 
                 UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"어맛!"
                                                                                          message:@"이미 존재하는 아이디예요"
                                                                                   preferredStyle:UIAlertControllerStyleAlert];
                 
                 UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인"
                                                                    style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction * _Nonnull action) {
                                                                      NSLog(@"확인버튼이 클릭되었습니다");
                                                                      
                                                                  }];
                 [alertController addAction:okButton];
                 
                 [self presentViewController:alertController animated:YES completion:nil];
                 
             });
             
         }
         
     }];
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

