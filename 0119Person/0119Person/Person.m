//
//  Person.m
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Person.h"

@interface Person ()

@property NSInteger weight;
@property NSInteger height;


@property NSInteger count;

@end

@implementation Person

- (void)setWeight:(NSInteger)weight setHeight:(NSInteger)height
{
    self.weight = weight;
    self.height = height;
    NSLog(@"몸무게는 %lu, 키는 %lu", weight, height);
    

}

- (void)eat:(NSString *)some;
{
    
    self.count ++;
    NSLog(@"사람은 뭘 먹는다");
    
    
    
}

- (NSInteger)howManyEatting
{
    return self.count;
}
@end
