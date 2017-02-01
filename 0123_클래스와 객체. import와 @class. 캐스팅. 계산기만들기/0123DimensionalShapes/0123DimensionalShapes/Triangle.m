//
//  Triangle.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

//-삼각형면적
- (CGFloat)triangle:(CGFloat)b
             height:(CGFloat)h
{
    CGFloat result = ((CGFloat)1/2) * b * h;
    return result;
  

}


@end
