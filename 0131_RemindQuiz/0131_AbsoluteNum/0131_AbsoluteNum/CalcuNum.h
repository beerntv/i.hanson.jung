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

//무조건 양수 결과 메서드
+ (NSInteger)calNum:(NSInteger)num1
           operator:(NSString *)op
               num2:(NSInteger)num2;

//윤년구하기
+ (BOOL)leapYear:(NSInteger)year;


@end
