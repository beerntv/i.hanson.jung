//
//  Month.m
//  0131_월의마지막날구하기
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Month.h"

@implementation Month

- (NSInteger)lastDayIs:(NSInteger)month
{
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
           
            NSLog(@"%u월의 마지막 날은 31일입니다",month);
            break;
            
        case 4:
        case 6:
        case 9:
        case 11:
            NSLog(@"%u월의 마지막 날은 30일입니다",month);
            break;
            
        case 2:
            NSLog(@"%u월의 마지막 날은 28일입니다",month);
            break;
        
        
            
        default:
            break;
            
           
            
    }
     return month;
}



@end
