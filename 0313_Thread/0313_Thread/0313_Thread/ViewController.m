//
//  ViewController.m
//  0313_Thread
//
//  Created by Hanson Jung on 2017. 3. 13..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;

@property (weak, nonatomic) IBOutlet UIButton *thread2;


@property (weak, nonatomic) IBOutlet UILabel *timerCount;
@property NSInteger int1;
@property (nonatomic, weak) NSThread *thread;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

/*
- (IBAction)btnAction:(id)sender {
    
    for (int i=0; i < 10000; i++) {
        NSLog(@"%d", i);
        [self.label1 setText:[NSString stringWithFormat:@"%d", i]];
        
    }
     //for 대신 while로. tread는 property로 올리고
     //NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(threadAction:) object:nil];
    
//     [self.thread start];
    [self.label2 setText:@"완료"];
    
}
*/

- (IBAction)btnAction2:(id)sender {

    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(threadAction2:) object:nil];
    [thread start];
    
    
}

/*
- (void)threadAction:(NSString *)str {
    
    // 무한반복. cancel로 정지 http://seorenn.blogspot.kr/2014/06/swift-nsthread.html
    while (!thread.isCancelled) {
        
    }
//    for (int i=0; i < 10000; i++) {
//        NSLog(@"%d", i);
//        [self.label1 setText:[NSString stringWithFormat:@"%d", i]];
    
}
*/

- (IBAction)threadAction2:(id)str
{
    for (int i=0; i < 10; i++) {
        //NSLog(@"%d", i);
        sleep(1);
        
        [self performSelectorOnMainThread:@selector(changeText:) withObject:[NSString stringWithFormat:@"%d",i]  waitUntilDone:YES];
        NSLog(@"%d", i);
        
        self.int1 = i;
        
    }
    
    [self.label2 setText:@"완료"];
    
}

- (void)method {
    
}

- (void)changeText:(NSString *)str {
    
    [self.timerCount setText:[NSString stringWithFormat:@"%ld",self.int1]];
    [self.label1 setText:str];
    
}

/*
- (IBAction)threadBtnAction:(id)sender {
    
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadAction:) object:nil];
    
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
