//
//  Calculator.h
//  0123ClassCalculator2
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Student;

@interface Record : NSObject


//-총점
//모든 과목을 더한 총점은 %lu 점 입니다
- (NSUInteger)totalScore:(NSUInteger)sum record:(NSUInteger)record;




//-평균
//모든 과목의 평균은 %lu 점 입니다.

@end
