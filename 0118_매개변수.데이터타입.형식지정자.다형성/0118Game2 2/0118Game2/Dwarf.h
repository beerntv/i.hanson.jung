//
//  Dwarf.h
//  0118Game2
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@interface Dwarf : GameCharacter

- (id)attackTo:(NSString *)human;
- (id)attackTo:(NSString *)elf;



@end
