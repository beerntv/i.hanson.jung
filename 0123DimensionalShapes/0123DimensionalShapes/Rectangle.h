//
//  Rectangle.h
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

//가로변
//@property NSUInteger width;

//세로변
//@property NSUInteger length;

//-면적
- (NSUInteger)rectangleArea:(NSUInteger)w
                 lengthSide:(NSUInteger)l;

//-둘레
- (NSUInteger)rectanglePerimeter:(NSUInteger)w
                 lengthSide:(NSUInteger)l;

//-부피
- (NSUInteger)rectangleVolume:(NSUInteger)w
                      lengthSide:(NSUInteger)l
                      heightSide:(NSUInteger)h;



@end
