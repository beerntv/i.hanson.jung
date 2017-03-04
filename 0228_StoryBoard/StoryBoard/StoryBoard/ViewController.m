//
//  ViewController.m
//  StoryBoard
//
//  Created by Hanson Jung on 2017. 2. 27..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIButton *btn;
//    self.testView.backgroundColor = [UIColor blueColor];
    
    
    
    
}

- (IBAction)btnAction:(UIButton *)sender {
    
    self.label.text = @"버튼 클릭됨";
    

    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
