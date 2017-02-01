//
//  Square.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Square.h"

@implementation Square

//-면적계산
- (NSUInteger)area:(NSUInteger)s;
 {
     
     NSUInteger result = s * s;
     
     return result;
     
     //또는 return = s*s;
     
 }


//-둘레계산
- (NSUInteger)perimeter:(NSUInteger)s;
{
    NSUInteger result = s * 4;
    
    return result;
    
}


//-부피계산
- (NSUInteger)volume:(NSUInteger)s
{
    NSUInteger result = s * s * s;
    
    return result;
    
}

@end
