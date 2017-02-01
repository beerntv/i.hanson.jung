//
//  main.m
//  0121BankDrill
//
//  Created by Hanson Jung on 2017. 1. 21..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Bank.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Person *p1 = [[Person alloc] init];
        p1.name = @"Jung";
        p1.asset = 1000000;
        
        Bank *b1 = [[Bank alloc] init];
        b1.name = @"국민";
        
    
        
        [p1 deposit:700 inBank:b1];
        
    
    }
    return 0;
}
