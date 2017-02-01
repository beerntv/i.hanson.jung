//
//  main.m
//  For_While_homework
//
//  Created by Hanson Jung on 2017. 2. 1..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //for 구구단
        [Calculator timesTable:8];
        //for 감소
        [Calculator timesTableReverse:8];
        
        //while 구구단
        [Calculator timesTableWhile:7];
        
        //for 팩토리얼
        [Calculator pactorialFor:6];
        
        //while 팩토리얼
        [Calculator pactorialWhile:5];
        
        //for 삼각수
        [Calculator triangularFor:10];
        
        //while 삼각수
        [Calculator triangularWhile:20];
        
    }
    return 0;
}
