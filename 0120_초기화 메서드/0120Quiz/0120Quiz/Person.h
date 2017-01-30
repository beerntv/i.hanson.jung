//
//  Person.h
//  0120Quiz
//
//  Created by Hanson Jung on 2017. 1. 20..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

@interface Person : NSObject

//이름
@property NSString *name;

//자산
@property NSUInteger asset;

//-입금
- (void)depositOfWon:(NSUIntebger)won toBank:(Bank *)bank;
//Bank 이름이 없어서 에러난다. 그래서 import Bank




//-조회


@end
