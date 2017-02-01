//
//  Calculator.m
//  For_While_homework
//
//  Created by Hanson Jung on 2017. 2. 1..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

//for 구구단

+ (void)timesTable:(NSInteger)num
{
    for (NSInteger i = 1; i < 10; i++) {
        
        NSInteger result = num * i;
        NSLog(@"for문 %ld x %ld = %ld", num, i, result);
    }
}

//while 구구단

+ (void)timesTableWhile:(NSInteger)num
{
    NSInteger index = 1;
    
    while (index < 10) {
        
        NSInteger result = num * index;
        NSLog(@"while문 %ld x %ld = %ld", num, index, result);
        index += 1;
    }
}


//for 팩토리얼

+(void)pactorialFor:(NSInteger)num
{
    
    NSInteger result = 1;
    for (NSInteger i = 1; i <= num; i += 1) {
        
        result = result * i;
        NSLog(@"for문 %ld! = %ld", num, result);
        
    }
}


//while 팩토리얼
+ (void)pactorialWhile:(NSInteger)num
{
    NSInteger index = 1;
    NSInteger result = 1;
    
    while (index <= num) {
        result = result * index;
        NSLog(@"while문 %ld! = %ld",num, result);
        index += 1;
        
    }
}

//for 삼각수
+ (void)triangularFor:(NSInteger)num
{
    NSInteger result = 0;
    for (NSInteger i = 1; i <= num; i += 1) {
        result = result + i;
        NSLog(@"%ld의 삼각수는 %ld",num, result);
        
    }
}
//while 삼각수
+ (void)triangularWhile:(NSInteger)num
{
    NSInteger result = 0;
    NSInteger index = 1;
    
    while (index <= num) {
        
        result = result + index;
        NSLog(@"%ld의 삼각수는 %ld",num, result);
        index += 1;
        
    }
}

@end
