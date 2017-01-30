//
//  Cone.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Cone.h"

@implementation Cone


//-원통부피
-(CGFloat)cone:(CGFloat)r
        height:(CGFloat)h
{
    CGFloat result = ((CGFloat)1/3) * M_PI * r * r * h;
    return result;
    
}

/* 클래스 메서드 (객체가 없는 클래스)
 + (CGFloat)cornVWidthRadius:(CGFloat)radius height:(CGFloat)height

 
 
main.m에서
 CGFloat corn = [Shape cornVWidthRadius:100 height:100];
 
 
 */


@end
