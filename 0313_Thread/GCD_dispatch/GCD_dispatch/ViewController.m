//
//  ViewController.m
//  GCD_dispatch
//
//  Created by Hanson Jung on 2017. 3. 13..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"1");
    });
                   
}


- (IBAction)btnAction:(id)sender {
    
    if (!self.btn.selected) {
        self.btn.selected = YES;
   
    
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

            
            for (int i = 0; i < 100 && self.btn.selected; i++) {
                sleep(1);
                //usleep() 은 10^-6 초
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.label setText:[NSString stringWithFormat:@"%d", i]];
                });
            }
        });
    } else {
        self.btn.selected = NO;
        // sync or async  main 충돌 궁금?????????????
        dispatch_async(dispatch_get_main_queue(),^{
            NSLog(@"완료");
            
        });
        
    }
    
    
    
}
                   
                   
//- (void)changeLabel:(NSString *)str {
//                       
//   [self.label setText:str];
//                       
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
