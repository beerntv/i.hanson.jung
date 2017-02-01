//
//  Warrior.h
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)windstorm:(id)to;
- (id)magicalAttack:(id)to;
- (id)heal:(id)to;


@end
