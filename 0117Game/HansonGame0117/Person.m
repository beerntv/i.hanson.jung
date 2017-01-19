//
//  Person.m
//  HansonGame0117
//
//  Created by Hanson Jung on 2017. 1. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)talk {
    NSLog(@"말을 합니다");
    return nil;
}
// 말을 합니다 라는 log를 찍고 반환은 nil 아무것도 안한다
// return 밑에 NSLog를 코드해도 찍히지 않는다. 메서드 종료
    
- (id)run {
    NSLog(@"빨리 달려");
    return nil;
}

- (id)eat {
    NSLog(@"우걱우걱");
    return nil;
    
}

- (id)cry {
    NSLog(@"엉엉엉");
    return nil;
    
}

- (id)eat:(id)food {
    NSLog(@"%를 먹습니다", food);
    return nil;
    
}



@end
