//
//  Wizard.h
//  WarriorGame
//
//  Created by Hanson Jung on 2017. 1. 29..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wizard : NSObject

@property id name;
@property id health;
@property id mana;
@property id masicalPower;

- (id)attack:(id)toSomeone;
- (id)heal:(id)to;

@end
