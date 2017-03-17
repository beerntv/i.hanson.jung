//
//  ViewController.m
//  Block
//
//  Created by Hanson Jung on 2017. 3. 10..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
typedef void(^SuccessBlock)(BOOL);


@interface ViewController ()
@property void (^blockFuntion)(void);

@property SuccessBlock networkSuccess;
@property SuccessBlock networkFail;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self testMethod];
    [self testMethod2];
    
    
    self.blockFuntion = ^{
        NSLog(@"use");
    };
    
//    self. number = 5;
    
    self.blockFuntion();
    [self test];
//    [self test2:^(void)parameter]
    [self test2:self.blockFuntion];
    
    self.networkFail = ^(BOOL isFail) {
        
        if(isFail) {
            //알럿뷰 띄우기
        }
    };
  
//    [self loginWithData:@"id" failMessage:self.networkFail];
  
    
/////////************ 제일 좋은 비교
//    [NSTimer timerWithTimeInterval:1 target:self selector:@selector(method:) userInfo:nil repeats:NO];
//    //얘는 아래에 selector 메서드가 있고
//    
//    [NSTimer timerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer) {
//        
//    }];
    // 얘는 여기서 불리고 끝난다. 한번쓰고. 한군데 뭉쳐놓음. alertViewController
    
/////////**************************
    
//    void (^blockFuntion2)(NSInteger) = ^(NSInteger num){
//        NSLog(@"use %ld", num);
//        
//    };
//    
//    void (^blockFuntion3)(NSString) = ^(NSString *str){
//        NSLog(@"use %ld", num);
//        
//    };
//    
//    blockFuntion2(3);
//    blockFuntion3(@"jung");
    
//    [self presentViewController:nil animated:NO completion:^{}]
//    
//    void (^add)(NSInteger) = ^{
    
   
//    [self.customView changeTextAction:^NSString *] {
//        return @"hahaha";
//        
//    }];
    
}



- (void)login:(SuccessBlock)failMessage
{
    //로그인 시도
    BOOL canlogin;
    
    if(canlogin) {
        failMessage(NO);
        
    }else{
        failMessage(YES);
        
    }
    //실패시
    failMessage(YES);
    
}

- (void)loginWithData:(NSString *)data failMessage:(SuccessBlock)failMessage
{
    //로그인시도
    BOOL canlogin;
    
    if(canlogin) {
        failMessage(NO);
        
    }else{
        failMessage(YES);
        //실패시
    }

}

-(void)test
{
    self.blockFuntion();
}


//////// 프린트물 예제 비교

-(void)testMethod {
    NSInteger anInteger = 42;
    void (^testBlock)(void) = ^{
        NSLog(@"First Integer is: %ld", anInteger);
        
    };
    
    anInteger = 84;
    
    testBlock();
    
}




-(void)testMethod2 {
    __block NSInteger anInteger = 42;
    void (^testBlock)(void) = ^{
        NSLog(@"Second Integer is: %ld", anInteger);
        anInteger = 100;
    };
    
    testBlock();
    NSLog(@"Original anInteger is: %ld", anInteger);
}


//////////



-(void)requstMainData:(SuccessBlock)failMessage {
    //로그인시도
    BOOL canlogin;
    
    if(canlogin) {
        failMessage(NO);
        
    }else{
        failMessage(YES);
        //실패시
    }

    
}

-(void)test2:(void(^)(void))parameter
{
    parameter();
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
