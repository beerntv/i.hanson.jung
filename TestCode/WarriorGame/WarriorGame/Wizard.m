//
//  Wizard.m
//  WarriorGame
//
//  Created by Hanson Jung on 2017. 1. 29..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Wizard.h"
@class Warrior;


@implementation Wizard

- (id)attack:(id)toSomeone
{
    NSLog(@"%@를 마법으로 공격했습니다", toSomeone);
    return nil;
}

@end
