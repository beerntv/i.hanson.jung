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
    NSInteger a = (realNum + 0.005) * 100;
    
    CGFloat b = (CGFloat)a / 100;
    
    result = b;
    
    return result;
    
}

// while문 - 구구단
 
+ (void)gugudan:(NSInteger)dan
{
    NSInteger index = 1;
    
    while(index < 10)
    {
        NSInteger result = dan * index;
        NSLog(@"%ld * %ld = %ld", dan, index, result);
        index++;
        
    }

}

// for문 구구단

+ (void)gugudanFor:(NSInteger)dan
{
    for (NSInteger c = 1; c < 10; c++) {
        NSLog(@"%lu * %lu = %lu",dan,c,dan*c);
    }
}

//모르는 소수점 몇째자리인가?

+ (void)decimalsPoint:(CGFloat)decimalNum
{
    CGFloat a = decimalNum - (NSInteger)decimalNum;
    NSInteger count;
    NSInteger index = 0;
    while (a != (float)0)
    {
        
        a = decimalNum * 10 - (NSInteger)decimalNum * 10;
        
        decimalNum = decimalNum * 10;
//        NSLog(@"이 숫자는 소숫점 %ld 자리까지 있습니다", index);
        NSLog(@"%lf", a);
 
        

        index++;
        count = index;
        
    }

    NSLog(@"이 숫자는 소숫점 %ld 자리까지 있습니다", count - 1);
 
}

// 모르는 소숫점 for문으로

//+ (void)decimalsPointFor:(CGFloat)decimalNum
//{
//    for(NSInteger i = 0; i < 100; i++)
//    {
//        
//    }
//    
//}



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
/* swap
 NSInter temp = num1;
 num1 = num2;
 num2 = temp;;
 */

// 윤년 구하기
+ (BOOL)leapYear:(NSInteger)year
{
    NSInteger num1 = year % 4;
    NSInteger num2 = year % 100;
    NSInteger num3 = year % 400;
    NSLog(@"계산된 나머지는 %ld, %ld, %ld", num1, num2, num3);
    
    if (num1 == 0 && num2 != 0 || num3 == 0) {
        
        NSLog(@"%ld년은 윤년입니다", year);
    } else {
        NSLog(@"%ld년은 윤년이 아닙니다", year);
    }
    
    return YES;
    
}
// 윤년 매월 마지막일 구하기

+ (NSInteger)lastDayOfMonth:(NSInteger)month year:(NSInteger)year {
    
    [CalcuNum leapYear:year];
    
    
    
    return nil;
    
    

// leapYear 메서드가 클래스메서드라서 self 못쓴다.
// 만약 leapYear를 인스턴스메서드 -(NSString)같은걸로 썼다면 CalcuNum대신 self로 쓴다.
    
    
    
}


+ (void)pactorial:(NSInteger)num
{
    NSInteger result = 1;

    for(NSInteger i = 1; i <= num; i++)
    {
// 조건변수 num은 내부함수의 변수로 쓰면 엉킨다. 새로 변수(result) 설정하여 안에서 돌린다.
        
        result = result * i;
        NSLog(@"%ld",result);
    }
}






@end
