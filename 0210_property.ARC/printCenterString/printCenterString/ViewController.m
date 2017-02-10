//
//  ViewController.m
//  printCenterString
//
//  Created by Hanson Jung on 2017. 2. 10..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property NSString *sampleBase;
@property NSString *sampleNormal;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  retain
//    // 생성
//    UITextField *tf1 = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
//    tf1.borderStyle = UITextBorderStyleLine;
//    tf1.delegate = self;
//    [self.view addSubview:tf1];
    
    //strign을 array로 만들기
//    NSString *st1 = [[NSString alloc] initWithString:@"korea"];
//    NSLog(@"%@", st1);
    
    NSInteger num = 1;
    NSString *str = [[NSString alloc] init];
    
    NSLog(<#NSString * _Nonnull format, ...#>)
    
    NSArray *korea = [[NSMutableArray alloc] initWithObjects:@"k", @"o", @"r", @"e", @"a", nil];
    
    NSArray *eraser = [[NSMutableArray alloc] initWithObjects:@"e", @"r", @"a", @"s", @"e", @"r", nil];
    
    [self printCenterString:korea otherArray:eraser];
    
}







- (NSArray *)printCenterString:(NSArray *)array otherArray:(NSArray *)array2
{
    
    
 
    
    
    if (array.count % 2 == 0) {
        
        NSLog(@"%@, %@", array[array.count / 2 -1], array[array.count / 2]);
        
        
        
        
    } else {
        NSLog(@"%@", array[array.count / 2]);
        
    }
    
    if (array2.count % 2 == 0) {
        
        NSLog(@"%@, %@", array2[array2.count / 2 -1], array2[array2.count / 2]);
        
        
        
        
    } else {
        NSLog(@"%@", array2[array2.count / 2]);
        
    }

    
    return array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
