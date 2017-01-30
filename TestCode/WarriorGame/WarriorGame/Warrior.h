//
//  Warrior.h
//  WarriorGame
//
//  Created by Hanson Jung on 2017. 1. 29..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property id name;
@property NSUInteger health;
@property id mana;
@property id physicalPower;

- (void)attack:(NSString *)toSomeone;
- (void)heal:(NSString *)to;

@end
