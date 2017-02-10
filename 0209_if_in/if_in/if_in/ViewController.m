//
//  ViewController.m
//  if_in
//
//  Created by Hanson Jung on 2017. 2. 9..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
                           
                          // for (NSString *q in dic2) {
                               //NSLog(@"%@", q);
                               // key값만 나옴
    UILabel *resultLB = [[UILabel alloc] initWithFrame:CGRectMake(40, 50, 200, 35)];
    [self.view addSubview:resultLB];
    
    NSArray *list = [[NSArray alloc ] initWithObjects:@"a",@"b",@"c",@"d",@"e", nil];
    // 같은뜻 리터럴
    NSArray *list2 = @[@"나무",@"물",@"바람",@"흙",@"불"];
    
    //NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"joo",@"joo1"] forKeys:@[@"key1",@"key2"]];
    NSDictionary *d2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"1",@"jung",@"2",@"sejun"];
    
    // 리터럴 문법
    //NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
    
    NSDictionary *dic2 = @{@"key0":@"잭",@"key1":@"영희",@"key2":@"케빈"};
    for (NSInteger i = 0; i < list.count; i++) {
        NSString *num =  [list objectAtIndex:i];
        NSLog(@"%@",num);
    }
    
    for (NSString *num in list2) {
        NSLog(@"%@",num);
    }
    
    NSString *resultStr = @"";
    for (NSString *key in dic2) {
        NSString *str = [dic2 objectForKey:key];
        resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:@"%@|",str]];
    }
    
    //뷰에 출력
    resultLB.text = resultStr;
    
    

    NSDictionary *d1 = @{@"1.이름":@"정한선", @"2.성별":@"남자", @"3.전화번호":@"3282-8445"};
    for (NSString *num1 in d1)
    {
        NSString *str = [d1 objectForKey:num1];
        NSLog(@"%@ : %@", num1, str);
        
    }
    
    // 순서대로 뽑으려고
//    NSArray *keyArry = @[@"이름", @"성별", @"전화번호"];
//    for (NSString *key in keyArry) {
//        NSString *str = [d1 objectForKey:key];
//        NSLog(@"%@", str);
//    
//    }
    
    
    
//    NSArray *a2 = [NSArray alloc] initWithArray:<#(nonnull NSArray *)#>
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
