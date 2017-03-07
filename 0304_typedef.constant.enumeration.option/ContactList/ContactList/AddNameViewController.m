//
//  AddNameViewController.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 6..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "AddNameViewController.h"
#import "MasterViewController.h"
#import "DataCenter.h"

@interface AddNameViewController () <UITextFieldDelegate>

@end

@implementation AddNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[DataCenter sharedData] loadFriendList];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    return YES;
    
}

- (IBAction)onSelectedBtn:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
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
