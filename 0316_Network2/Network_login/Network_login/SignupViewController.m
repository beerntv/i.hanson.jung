//
//  SignupViewController.m
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 16..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController ()

@property (weak, nonatomic) IBOutlet UITextField *signupIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *signupPWTextfield;
@property (weak, nonatomic) IBOutlet UITextField *signupPWAgainTextfield;
@property (weak, nonatomic) IBOutlet UIButton *signupBtn;



@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectedBtnSignup:(id)sender {
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
