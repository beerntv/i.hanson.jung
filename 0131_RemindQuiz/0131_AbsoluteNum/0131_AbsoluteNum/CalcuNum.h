//
//  CalcuNum.h
//  0131_AbsoluteNum
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalcuNum : NSObject

//절대값 구하는 메서드
+ (NSInteger)absoluteNum:(NSInteger)number;


//반올림 구하는 메서드
+ (CGFloat)raiseDecimals:(CGFloat)realNum;

+ (void)decimalsPoint:(CGFloat)decimalNum;

//while문 구구단
+ (void)gugudan:(NSInteger)dan;
//for문 구구단
+ (void)gugudanFor:(NSInteger)dan;

//무조건 양수 결과 메서드
+ (NSInteger)calNum:(NSInteger)num1
           operator:(NSString *)op
               num2:(NSInteger)num2;



//윤년구하기
+ (BOOL)leapYear:(NSInteger)year;

// n! 팩토리얼
+ (void)pactorial:(NSInteger)num;

@end
