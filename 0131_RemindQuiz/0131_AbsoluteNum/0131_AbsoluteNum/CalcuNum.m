//
//  CalcuNum.m
//  0131_AbsoluteNum
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "CalcuNum.h"

@implementation CalcuNum

//-절대값
+ (NSInteger)absoluteNum:(NSInteger)number
{
    NSInteger result;
    if (number > 0) {
        result = number;
        
    }else if (number <0){
        result = -number;
    }
    
    
    return result;
    
}
//-반올림 소수점3째에서 반올림하여 2째자리까지 표현
+ (CGFloat)raiseDecimals:(CGFloat)realNum
{
    CGFloat result;
 
    result = realNum;
    
//원래 이 식을 쓰려고 했으나    result = realNum + 0.005;
    
    return result;
    
}

//-양수만 나오는 계산기

+ (NSInteger)calNum:(NSInteger)num1
            operator:(NSString *)op
                num2:(NSInteger)num2
{
    NSInteger result;
    
    if ([op isEqual:@"-"] && num1 > num2) {
        NSInteger result;
        result = num1 - num2;
        
        return result;
        
    } else if ([op isEqual:@"-"] && num1 < num2) {
        NSInteger result;
        result = num2 - num1;
        
        return result;
    
    } else if ([op isEqual:@"+"]) {
        NSInteger result;
        result = num1 + num2;
        
        return result;

    }
    
    return result;
}

// 윤년 구하기
+ (BOOL)leapYear:(NSInteger)year
{
    NSInteger num1 = year % 4;
    NSInteger num2 = year % 100;
    NSInteger num3 = year % 400;
    
    if (num1 == 0 && num2 != 0 && num3 == 0) {
        
        
        NSLog(@"%ld년은 윤년입니다", year);
    }
    NSLog(@"%ld %ld %ld", num1, num2, num3);
    return YES;
    
}
// 윤년 마지막월 구하기


@end
