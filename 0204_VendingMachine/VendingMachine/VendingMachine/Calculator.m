//
//  Calculator.m
//  VendingMachine
//
//  Created by Hanson Jung on 2017. 2. 4..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Calculator.h"
#import "ViewController.h"

@interface Calculator ( )

@property NSUInteger cola;
@property NSUInteger water;
@property NSUInteger test;

@property NSUInteger ochonwon;
@property NSUInteger chonwon;
@property NSUInteger obakwon;


@end


@implementation Calculator

//음료 가격
-(instancetype) initWithPrice {
    self = [super init];
    
    if( self ) {
        self.cola = 1200;
        self.water = 500;
        self.test = 700;
        
        self.ochonwon = 5000;
        self.chonwon = 1000;
        self.obakwon = 500;
     
        
    }
    
    return self;
}

//+ (NSString *)priceTest:(NSString *)test {
//    
//    return self.test;
//}
// test는 외부에서 입력하여 값을 변경한다고 한다면...은닉안한다고 한다면



//돈 입력
- (void)insertMoney:(NSUInteger)money
{
    if (money == self.ochonwon) {
        self.change += 5000;
    } else if (money == self.chonwon) {
        self.change += 1000;
        
    } else if (money == self.obakwon) {
        self.change += 500;
    }
    
    NSLog(@" 현재금액 %ld 입니다", self.change);
    
}


+ (NSInteger) returnPrice {
    return 100;
}


//음료 선택
+ (void)add:(NSUInteger)num
{
    NSUInteger sum = 0;
    
    
     
}

//거스름돈 반환




@end
