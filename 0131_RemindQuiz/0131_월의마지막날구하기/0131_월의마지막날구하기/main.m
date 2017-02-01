//
//  main.m
//  0131_월의마지막날구하기
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "month.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Month *new = [[Month alloc] init];
        [new lastDayIs:1];
        [new lastDayIs:2];
        [new lastDayIs:3];
        [new lastDayIs:4];
        [new lastDayIs:5];
        [new lastDayIs:6];
        [new lastDayIs:7];
        [new lastDayIs:8];
        [new lastDayIs:9];
        [new lastDayIs:10];
        [new lastDayIs:11];
        [new lastDayIs:12];
        
        
        
    }
    return 0;
}
