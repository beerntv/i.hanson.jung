//
//  Person.h
//  0121BankDrill
//
//  Created by Hanson Jung on 2017. 1. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Bank;


@interface Person : NSObject

//이름
@property NSString *name;

//자산
@property NSUInteger asset;

//-입금
// self.name 가 (은행이름)은행에 %lu를 입금하였습니다.
- (void)deposit:(NSUInteger)money inBank:(Bank *)bank;

//-조회
// self.name 가 (은행이름)은행에서 자신의 계좌를 조회해 본 결과 총 자산은 %lu 원입니다.
- (void)inquireFor:(NSUInteger)asset inBank:(Bank *)bank;

- (void)deposit:(NSUInteger)money inBank:(Bank *)bank;



@end
