//
//  Person.h
//  0131_remindQuiz
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSString *job;
@property NSUInteger age;
@property NSString *birthday;

- (instancetype)initWithName:(NSString *)name
                      setJob:(NSString *)job
                     myAgeIs:(NSUInteger)age
                myBirthdayIs:(NSString *)birthday;

- (BOOL)isMyBirthday:(NSString *)today;
- (void)jobIs:(NSString *)job;
- (void)myNameIs:(NSString *)name;
- (void)myAgeIS:(NSUInteger) age;

@end
