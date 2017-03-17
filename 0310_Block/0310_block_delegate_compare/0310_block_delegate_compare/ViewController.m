//
//  ViewController.m
//  0310_block_delegate_compare
//
//  Created by Hanson Jung on 2017. 3. 11..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.customView changeTextAction:^NSString *{
     
     return @"block";
                                                   
    }];
    
    
    
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
