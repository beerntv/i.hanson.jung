//
//  Wizard.m
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

- (id)windstorm:(id)character {
    NSLog(@"폭풍을 %@에게 날렸습니다", character);
    return nil;
    
    
    
}


@end


// 선생님 코드
// -(id)physicalAttackTo:(id *)someCharacter

// - (id)physicalAttackTo:(Wizard *)someCharacter
// {
//    피지컬파워만큼 전사의 health에서 빼야된다
//    id resultHealth  = someCharacer.health - self.physicalPower
//    return nil;
//
// }
//
//
