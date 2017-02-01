//
//  main.m
//  0131_AbsoluteNum
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalcuNum.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CalcuNum *n1 = [[CalcuNum alloc] init];
        
        
//      NSInteger reulstValue = [CalcuNum absoluteNum:-219];
        NSLog(@"%d의 절대값은 %ld", -291, [CalcuNum absoluteNum:-291]);
        NSLog(@"%f의 반올림값은 %.2f", 3.314, [CalcuNum raiseDecimals:3.314]);
        NSLog(@"%f의 반올림값은 %.2f", 3.316, [CalcuNum raiseDecimals:3.316]);
//
        NSLog(@"%d %@ %d = %ld", 30, @"+", 6, [CalcuNum calNum:30
                                                     operator:@"+"
                                                         num2:6]);
        NSLog(@"%d %@ %d = %ld", 15, @"-", 9, [CalcuNum calNum:15
                                                       operator:@"-"
                                                           num2:9]);
        NSLog(@"%d %@ %d = %ld", 3, @"-", 10, [CalcuNum calNum:3
                                                       operator:@"-"
                                                           num2:10]);
     
        [CalcuNum gugudan:3];
        [CalcuNum gugudanFor:4];
        [CalcuNum decimalsPoint:3.141592];
        
        
        [CalcuNum leapYear:1600];
        [CalcuNum leapYear:2000];
        [CalcuNum leapYear:2100];
        [CalcuNum leapYear:2004];
        
        [CalcuNum pactorial:6];
        
    }
    return 0;
}

