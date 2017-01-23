//
//  Circle.h
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Circle : NSObject

//-넓이
-(CGFloat)circle:(NSUInteger)r;

//-둘레
-(CGFloat)circlePerimeter:(CGFloat)r;

//-부피
-(CGFloat)cylinder:(CGFloat)r
            height:(CGFloat)h;


@end
