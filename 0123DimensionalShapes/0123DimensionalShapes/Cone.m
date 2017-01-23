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
    CGFloat result = ((CGFloat)1/2) * M_PI * r * r * h;
    return result;
    
}
@end
