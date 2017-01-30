//
//  main.m
//  PractionTest
//
//  Created by Hanson Jung on 2017. 1. 27..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        //분수를 1/3로 설정한다
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        //분수를 표시한다
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
        
        
        
    }
    return 0;
}
