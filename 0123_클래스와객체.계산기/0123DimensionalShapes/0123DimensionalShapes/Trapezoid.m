//
//  Trapezoid.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Trapezoid.h"

@implementation Trapezoid

//-사다리꼴면적

- (CGFloat)trapezoid:(CGFloat)a
              upSide:(CGFloat)b
              height:(CGFloat)h
{
    CGFloat result = ((CGFloat)1/2) * h * (a + b);
    return result;
    
}

@end
