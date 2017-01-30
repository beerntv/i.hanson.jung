//
//  elf.h
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface elf : NSObject
@class Human;

//import는  헤더파일 다 읽어온다
//class는 그냥 Human이란 클래스가 있어 만 명시. 아래 Human이란 타입을 쓰기위해 오류를 안내기위해. Human안에 뭐가 있든없든.

@property NSString *name;
@property NSUInteger age;
@property NSUInteger lever;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger ap;
@property NSInteger def;

- (id)attackTo:(Human *)human;
//(void)는 return이 없다

@end
