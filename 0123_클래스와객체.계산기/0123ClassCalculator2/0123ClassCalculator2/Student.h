//
//  Student.h
//  0123ClassCalculator2
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Calculator;

@interface Student : NSObject

//이름
@property NSString *name;
//영어
@property NSUInteger english;
//수학
@property NSUInteger math;
//과학
@property NSUInteger science;
//사회
@property NSUInteger society;


@end
