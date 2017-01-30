//
//  Square.h
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Square : NSObject

//한변
//@property NSUInteger side;

//-면적계산
- (NSUInteger)area:(NSUInteger)s;

//-둘레계산
- (NSUInteger)perimeter:(NSUInteger)s;

//-부피계산
- (NSUInteger)volume:(NSUInteger)s;


@end
