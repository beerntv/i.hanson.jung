//
//  Calculator.m
//  0123ClassCalculator2
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Calculator.h"
#import "Student.h"
@implementation Calculator

//-총점
//모든 과목을 더한 총점은 %lu 점 입니다
- (NSUInteger)totalScore:(NSUInteger)sum record:(NSUInteger)record
{
    
    sum = Student.english + Student.math + Student.science + Student.society;
    
    
    NSLog(@"모든 과목을 더한 총점은 %lu 점 입니다", sum);
    
    return sum;
    
    
}

//-평균
//모든 과목의 평균은 %lu 점 입니다.
//


@end



//- (instancetype)initWithSubjectName:(NSString *)name
//{
// self = [super unit];
// if (self) {
// self.name = name;
// }
// return self;
//}
