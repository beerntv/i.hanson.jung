//
//  Elf.m
//  0118Game2
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Elf.h"
#import "Human.h"
#import "Dwarf.h"

@implementation Elf

- (id)attackTo:(Human *)human
{
    
    NSInteger leftHP = human.hp - self.ap;
    NSInteger baseHP = human.hp;
    
    human.hp = leftHP;
    
    NSLog(@"human의 생명력이 %lu에서 %lu가 되었습니다", baseHP, leftHP);

        
    return nil;
    
    
}

- (id)attackToSomeone:(NSInteger)who
// NSInteger로 넣어서 reference type 아니라 value type으로 불러옴.
// 객체로 부르지 않으면 매번 그 객체의 hp만 불러오기 때문에 저장이 되지 않음
{
    NSInteger leftHP = who - self.ap;
    NSInteger baseHP = who;
    
    
    who = leftHP;
    
    
    NSLog(@"누군가는 생명력이 %lu에서 %lu가 되었습니다. 안가르쳐주지롱", baseHP, leftHP);
    
    return nil;
    
}

// -(void)jumpTo:

@end
