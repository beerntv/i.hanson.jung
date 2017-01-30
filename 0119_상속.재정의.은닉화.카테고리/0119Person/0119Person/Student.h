//
//  Student.h
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person

@property NSInteger grade;
@property NSString *item;





- (id)studyTo;
- (instancetype)initWithName:(NSString *)name;


@end
