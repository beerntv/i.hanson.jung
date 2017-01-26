//
//  Grade.m
//  0124IfStatement
//
//  Created by Hanson Jung on 2017. 1. 24..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Grade.h"

@implementation Grade

//시험점수 받아서 등급반환
//grade = A+, A, B+ B....

+ (NSString *)toGrade:(NSInteger)record

{
    if (record >= 95) {
        
        NSString *g = @"A+";
        
        return g;
        
        
    }
    else if(record >= 90) {
        NSString *g = @"A";
        
        return g;
        
    }
    else
    {
        NSString *g = @"B+";
        
        return g;
    }

    //else if 로 끝내면 if문 밖엔 어떤 return값을 줘야하나??
    
}

//등급받아서 point로 변환
//point = 4.5, 4.0, 3.5....

@end
    
