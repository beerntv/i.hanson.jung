//
//  Elf.m
//  0118Game
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Elf.h"

@implementation Elf

- (id)attackTo:(Elf *)elf
{
    // 데미지가 어떻게 들어갈지
    NSInteger damage = self.ap - elf.def;
    NSInteger baseHP = elf.hp;
    elf.hp = baseHP - damage;
    
    NSLog(@"**엘프**의 남은 피는 %lu입니다.",elf.hp);
    
    return nil;
    
}



@end
