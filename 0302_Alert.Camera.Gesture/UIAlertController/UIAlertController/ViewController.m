//
//  ViewController.m
//  UIAlertController
//
//  Created by Hanson Jung on 2017. 3. 2..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 

    UIButton *alert = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    //alert.titleLabel.text = @"alert";
    //alert.titleLabel.textColor = [UIColor blueColor];
    
    
    [alert setTitle:@"alert" forState:UIControlStateNormal];
    [alert setTitle:@"click" forState:UIControlStateHighlighted];
    
    [alert setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [alert setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    
    [self.view addSubview:alert];
    
    
    [alert addTarget:self action:@selector(didClickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    [self.customView changeTextAction:^NSString *] {
//        return @"hahaha";
//        
//    }];
//    
    
    
    
}

//- (UIViewController *)targetViewControllerForAction:(SEL)action sender:(id)sender {
- (void)didClickButton:(UIButton*) sender{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alert"
                                                                             message:@"경고:조심해"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButtun = [UIAlertAction actionWithTitle:@"alert"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         NSLog(@"ok버튼이 클릭되었습니다");
                                                     }];
    [alertController addAction:okButtun];
    
    [self presentViewController:alertController animated:YES completion:nil];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
