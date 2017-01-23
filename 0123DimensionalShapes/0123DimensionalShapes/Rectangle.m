//
//  Rectangle.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle


//-면적
- (NSUInteger)rectangleArea:(NSUInteger)w lengthSide:(NSUInteger)l

{
    NSUInteger result = w * l;
    
    return result;
    
}
//-둘레
- (NSUInteger)rectanglePerimeter:(NSUInteger)w
                 lengthSide:(NSUInteger)l
{
    NSUInteger result = l * 2 + w * 2;
    
    return result;
    
}


//-부피
- (NSUInteger)rectangleVolume:(NSUInteger)w
                      lengthSide:(NSUInteger)l
                      heightSide:(NSUInteger)h

{
    NSUInteger result = w * l * h;
    return result;
    
}

@end
