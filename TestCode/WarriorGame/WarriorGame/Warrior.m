//
//  Warrior.m
//  WarriorGame
//
//  Created by Hanson Jung on 2017. 1. 29..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Warrior.h"
@class Wizard;


@implementation Warrior

- (void)attack:(NSString *)toSomeone
{
    NSLog(@"%@를 주먹으로 공격했습니다", toSomeone);
}

@end
