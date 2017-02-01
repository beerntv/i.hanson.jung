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

// set메서드
//- (void)setName:(id)name;  jack.name = ??
//- (NSString *)name; >>  변수 = jack.name

@property NSUInteger health;
@property id mana;
@property id physicalPower;

- (void)attack:(NSString *)toSomeone;
- (void)heal:(NSString *)to;

@end
