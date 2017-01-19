//
//  main.m
//  Class
//
//  Created by Hanson Jung on 2017. 1. 3..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    
    Car *car111 = [[Car alloc] init];
    car111.brandName = @"hyundai";

    NSLog(@"%@", car111.brandName);
    
    Car *car2 = [[Car alloc] init];
    car2.brandName = @"Volvo";
    
    Car *division = [[Car alloc] init];
    division.division = @"S90";
    
   
    NSLog(@"내차는 %@ %@ 입니다", car2.brandName, division.division);
    
    NSLog(@"전부 %@, %@, %@", car111.brandName, car2.brandName, division.division);
    
    return 0;
    



}
