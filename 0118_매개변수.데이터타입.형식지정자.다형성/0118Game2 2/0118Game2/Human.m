//
//  Human.m
//  0118Game2
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Human.h"
#import "Elf.h"
#import "Dwarf.h"

@implementation Human

- (id)attackTo:(Elf *)elf
{
    NSInteger baseHP = elf.hp;
    NSInteger leftHP = elf.hp - self.ap;
    elf.hp = leftHP;
    
    
//    elf.hp = baseHP - life;
    
    NSLog(@"elf의 생명력은 %lu 입니다", leftHP);

    
    return nil;
    
    
}


@end
