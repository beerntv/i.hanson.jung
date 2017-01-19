//
//  main.m
//  0118Game2
//
//  Created by Hanson Jung on 2017. 1. 18..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Elf.h"
#import "Dwarf.h"


//헤더파일을 import

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Human *me = [[Human alloc] init];
        // Human이란 객체공간에 *me변수이름으로 객체주소를 담아라. [클래스이름으로 객체를 생성]한 객체주소
        me.name = @"사람";
        // me라는 객체에 담긴 name값은 tony
        me.hp = 100;
        me.ap = 12;
        
        Elf *you = [[Elf alloc] init];
        you.name = @"엘프";
        you.hp = 100;
        you.ap = 15;
        
        Dwarf *he = [[Dwarf alloc] init];
        he.name = @"드워프";
        he.hp = 200;
        he.ap = 5;
        
        
        
        NSLog(@"사람은 생명력 %lu로 시작합니다", me.hp);
        NSLog(@"엘프는 생명력 %lu로 시작합니다", me.hp);
        
        
        [you attackTo:me];
        [me attackTo:you];
        [you attackTo:me];
        [me attackTo:you];
        [you attackTo:me];
        [me attackTo:you];
                
        
        [you attackToSomeone:me.hp];
        [you attackToSomeone:he.hp];
        // NSInteger로 넣어서 reference type 아니라 value type으로 불러옴.
        // 객체로 부르지 않으면 매번 그 객체의 hp만 불러오기 때문에 저장이 되지 않음
        
        
        
    }
    return 0;
}
