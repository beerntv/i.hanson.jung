//
//  ViewController.m
//  Thread_timer
//
//  Created by Hanson Jung on 2017. 3. 13..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property NSThread *thread;
@property (nonatomic) BOOL threadOn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnAction:(id)sender {

    if (!self.btn.selected) {
        self.btn.selected = YES;
        
        NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(threadTimer:) object:nil];
        
        self.threadOn = YES;
        [thread start];
    } else {
        self.btn.selected = NO;
    
        self.threadOn = NO;
        
    }
}

- (void)threadTimer:(NSThread *)thread {
    
    NSInteger i = 0;
    
    while (self.threadOn) {
        NSLog(@"%ld", i);
//        [self.label setText:[NSString stringWithFormat:@"%ld",i]];
        [self performSelectorOnMainThread:@selector(changeLabel:) withObject:[NSString stringWithFormat:@"%ld",i] waitUntilDone:YES];
        
        sleep(1);
        i++;
    }
}

- (void)changeLabel:(NSString *)str {
    
    [self.label setText:str];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
