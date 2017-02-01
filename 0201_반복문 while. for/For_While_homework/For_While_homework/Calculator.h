//
//  Calculator.h
//  For_While_homework
//
//  Created by Hanson Jung on 2017. 2. 1..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//for 구구단
+ (void)timesTable:(NSInteger)num;
//for 구구단 감소
+ (void)timesTableReverse:(NSInteger)num;

//while 구구단
+ (void)timesTableWhile:(NSInteger)num;

//for 삼각수
+ (void)triangularFor:(NSInteger)num;

//while 삼각수
+ (void)triangularWhile:(NSInteger)num;

//for 팩토리얼
+(void)pactorialFor:(NSInteger)num;

//while 팩토리얼
+ (void)pactorialWhile:(NSInteger)num;
@end
