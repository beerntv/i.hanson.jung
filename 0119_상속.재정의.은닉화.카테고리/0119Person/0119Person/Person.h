//
//  Person.h
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property NSString *name;
@property NSInteger age;



- (id)eat:(NSString *)some;
- (NSInteger)howManyEatting;
- (void)setWeight:(NSInteger)weight setHeight:(NSInteger)height;



@end
