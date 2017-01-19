//
//  Elf.h
//  0118Game
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Human;

@interface Elf : NSObject


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


/*
메소드 만들기
- (반환타입)메소드이름:(매개변수타입)매개변수이름
- (returnType)methodName:(parameterType)parameterName
매개변수 - 해당 메소드한테 정보를 던져주기 위해서

@param elf 앨프 객체를 던져준다
*/
