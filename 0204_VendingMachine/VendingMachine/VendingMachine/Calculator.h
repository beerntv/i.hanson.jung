//
//  Calculator.h
//  VendingMachine
//
//  Created by Hanson Jung on 2017. 2. 4..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property(readonly) NSUInteger cola;
@property(readonly) NSUInteger water;
@property(readonly) NSUInteger test;

@property(readonly) NSUInteger ochonwon;
@property(readonly) NSUInteger chonwon;
@property(readonly) NSUInteger obakwon;
@property NSUInteger change;

- (void)insertMoney:(NSUInteger)money;
+ (NSInteger) returnPrice;
@end
