//
//  InchToCm.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "InchToCm.h"

@implementation InchToCm

+ (CGFloat)inchToCm:(CGFloat)inch
{
    return 2.54 * inch;
    
}

+ (CGFloat)cmToInch:(CGFloat)cm
{
    return cm/2.54;
    
}


@end
