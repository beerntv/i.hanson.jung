//
//  Person.m
//  0131_remindQuiz
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Person.h"

@implementation Person
/*
@property NSString *name;
@property NSString *job;
@property NSUInteger age;
@property NSString *birthday;
*/
- (instancetype)initWithName:(NSString *)name
                      setJob:(NSString *)job
                     myAgeIs:(NSUInteger)age
                myBirthdayIs:(NSString *)birthday
{
    self = [super init];
    if (self) {
        self.name = name;
        self.job = job;
        self.age = age;
        
        NSLog(@"내이름은 %@", name);
        NSLog(@"내직업은 %@ 입니다", job);
        NSLog(@"내 나이는 %lu 입니다", age);
    }
    
    return self;
}

- (void)myNameIs:(NSString *)name
{
    NSLog(@"내이름은 %@", name);
    
}

- (void)jobIs:(NSString *)job
{
    NSLog(@"내직업은 %@ 입니다", job);
    
}

- (void)myAgeIS:(NSUInteger) age
{
    NSLog(@"내 나이는 %lu 입니다", age);
    
}

- (BOOL)isMyBirthday:(NSString *)today
{
// 입력생일이 오늘날짜와 같은가요? 아래는 아직 미완
    NSString *todayIs = @"2017/01/31";
    
    NSArray *tempList = [todayIs componentsSeparatedByString:@"/"];
    

    
    NSUInteger year = [[tempList objectAtIndex:0] integerValue];
//같은거 NSString *indexString = [tempList objectAtIndex:0];
//     NSUInteger year = [indexString integerValue];
    NSUInteger month = [[tempList objectAtIndex:1] integerValue];
    NSUInteger day = [[tempList objectAtIndex:2] integerValue];
    
    NSLog(@"맞다. 오늘이 니 생일이야!!");
    
    return YES;
    
}


@end
