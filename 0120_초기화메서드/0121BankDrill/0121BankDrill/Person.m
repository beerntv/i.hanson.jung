//
//  Person.m
//  0121BankDrill
//
//  Created by Hanson Jung on 2017. 1. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Person.h"
#import "Bank.h"

@implementation Person

// self.name 가 (은행이름)은행에 %lu를 입금하였습니다.
- (void)deposit:(NSUInteger)money inBank:(Bank *)bank;
{
    NSLog(@"%@ 가 %@ 은행에 %lu를 입금하였습니다", self.name, bank.name, money);
    
}
// self.name 가 (은행이름)은행에서 자신의 계좌를 조회해 본 결과 총 자산은 %lu 원입니다.
- (void)inquireFor:(NSUInteger)asset inBank:(Bank *)bank;
{
    NSLog(@"%@ 가 %@ 에서 자신의 계좌를 조회해 본 결과 총 자산은 %lu 원입니다.", self.name, bank.name, asset);
    
}


@end
