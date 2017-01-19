//
//  Wizard.h
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Warrior;
//양방향 import하면 무한루프

@interface Wizard : NSObject

@property NSInteger health;
//health값을 저장하는 공간
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSString *weapon;

- (id)windstorm:(NSString *)character;
- (id)magicalAttack:(NSString *)character;
- (id)heal:(NSString *)character;

@end



// - 


// - (id)physicalAttackTo:(Wizard *)someCharacter

// - (id)masicalAttackTo:(id *)someCharacter
// - (id)jumpTo:(id *)someWhere
