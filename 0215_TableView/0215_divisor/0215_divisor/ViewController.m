//
//  ViewController.m
//  0215_divisor
//
//  Created by Hanson Jung on 2017. 2. 15..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
<UITableViewDelegate>

@property UITextField *tf;
@property NSString *print;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSInteger sum;
    NSLog(@"sum = %ld", sum);
    
    self.tf = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    self.tf.borderStyle = UITextBorderStyleLine;
    self.tf.delegate = self;
 
    self.tf.font = [UIFont systemFontOfSize:13];
    self.tf.backgroundColor = [UIColor whiteColor];
    self.tf.textColor = [UIColor lightGrayColor];
    self.tf.textAlignment = NSTextAlignmentLeft;
 
    [self.view addSubview:self.tf];
    
    
    UILabel *print = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    print.textColor =  [UIColor blackColor];
    [self.view addSubview:print];
    
    NSString *resultString = [NSString stringWithFormat:@"%ld", sum];
    print.text = resultString;

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    NSString *str = [self.tf text];
    NSInteger num = [str intValue];
//    [self calculator:num];
    self.print.text = [NSString stringWithFormat:@"%ld", [self calculator:num]];
    return YES;
    
}



- (NSInteger)calculator:(NSInteger)num
{
    
    NSInteger j = num;
    NSInteger sum = 0;
    
    for (NSInteger i = 1; i < j; i += 1) {
       
        j = num / i;
        
        if (num % i == 0) {
            
            sum = sum + i + j;
            
        }
        
        
        
    
    }
    
    
    return sum;
    
}




@end
