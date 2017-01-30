//
//  Circle.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Circle.h"

//pi 반복되어 프로퍼티로 init 시킬때
//@property CGFloat PI;


@implementation Circle
/*
//pi 반복되어 프로퍼티로 init 시킬때 
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.PI = 3.14
    }
    return self;
}
*/
//-넓이
-(CGFloat)circle:(NSUInteger)r
{
    CGFloat result = r * r * M_PI;
    
    return result;
    
}

//-둘레
-(CGFloat)circlePerimeter:(CGFloat)r
{
    CGFloat result = 2 * M_PI * r;
    return result;
    
}

//-실린더부피
-(CGFloat)cylinder:(CGFloat)r
            height:(CGFloat)h
{
    CGFloat result = M_PI * r * r * h;
    return result;
    
}

//-구 부피
-(CGFloat)sphere:(CGFloat)r
{
    CGFloat result = ((CGFloat)4/3) * M_PI * r * r * r;
    return result;
    
}

@end
