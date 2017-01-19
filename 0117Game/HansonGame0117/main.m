//
//  main.m
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "Person.h"

#import "Human.h"
#import "elf.h"

//import - "Warrior라는 헤더파일을 만들어줬어"라고 알려준다.
//그 파일에 있는 정보를 가져온다


int main(int argc, const char * argv[]) {
    
    [[Warrior alloc] init];

    
    
    
// [<클래스이름> alloc];
// alloc - 메소드. 워리어라는 객체를 생성하라
// [객체 init];
// init - 초기화
// [[<클래스이름> alloc] init]; = [<클래스이름> new];
    
    Person *me = [[Person alloc] init];
    Person *man1 = [[Person alloc] init];
    me.name = @"hanson";
    man1.name = @"tony";
    [me eat];
    [me cry];
    

    
    Warrior *wr1 = [[Warrior alloc] init];
    Warrior *wr2 = [[Warrior alloc] init];
    wr1.health = 100;
    wr1.physicalPower = 200;
    wr1.magicalPower = 350;
    wr1.mana = 150;
    
    
    
    Wizard *wd1 = [[Wizard alloc] init];
    Wizard *wd2 = [[Wizard alloc] init];
    wd1.mana = 300;
    wd1.physicalPower = 500;
    wd1.magicalPower = 300;
    wd1.health = 10;
    [wd1 windstorm:@"전사"];
    [wd2 windstorm:wr1];
    
    

    
    
    NSLog(@"My name is %@", me.name);
    NSLog(@"His name is %@", man1.name);
    
    NSLog(@"health가 %@ 올랐습니다.", wr1.health);
    NSLog(@"%@의 mana는 %@입니다!! 얏호~", me.name, wr1.mana);
    
    
    /* 
    타입
     참조형(reference)
     - NSString * >>> @"text"
     - NSNumber *   @10
     - 사용자의 클래스
     - id
     값타입
     - BOOL
     BOOL isbool = YES;
     - NSInteger >>> 10
     - CGFloat
     */
    
    
    
    

    
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}


