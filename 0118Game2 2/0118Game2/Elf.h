//
//  Elf.h
//  0118Game2
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@class Human;
@interface Elf : GameCharacter




- (id)attackTo:(Human *)Human;
// - (반환타입)메서드이름

- (id)attackToSomeone:(NSInteger)hp2;


@end
