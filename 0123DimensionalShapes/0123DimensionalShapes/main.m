//
//  main.m
//  0123DimensionalShapes
//
//  Created by Hanson Jung on 2017. 1. 23..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Rectangle.h"
#import "InchToCm.h"
#import "Circle.h"
#import "Triangle.h"
#import "Trapezoid.h"
#import "Cone.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

//사각형
        Square *s1 = [[Square alloc] init];
        //면적
        NSUInteger area = [s1 area:10];
        // area 가 아니라 return값이 있으니 NSUInteger area
        // [s1 area:10]은 컴퓨터가 계산. 그 결과 컴퓨터 내부에서 100 이걸 area로 NSUInteger의 형태로 리턴값을 받아라
        NSLog(@"사각형의 넓이는 %lu 입니다", area);
        // area에 저장된 값이 계산된 결과값
        
        //둘레
        NSUInteger perimeter = [s1 perimeter:10];
        NSLog(@"사각형의 둘레는 %lu 입니다", perimeter);
        
        //부피
        NSUInteger volume = [s1 volume:10];
        NSLog(@"사각형의 부피는 %lu 입니다", volume);
        
//직사각형
        Rectangle *r1 = [[Rectangle alloc] init];
        //면적
        NSUInteger rectangleArea = [r1 rectangleArea:10 lengthSide:20];
        NSLog(@"직사각형의 넓이는 %lu 입니다", rectangleArea);
        
        //둘레
        NSUInteger rectanglePerimeter = [r1 rectanglePerimeter:10 lengthSide:20];
        NSLog(@"직사각형의 둘레는 %lu 입니다", rectanglePerimeter);
        
        //부피
        NSUInteger rectangleVolume = [r1 rectangleVolume:10 lengthSide:20 heightSide:30];
        NSLog(@"직사각형의 부피는 %lu 입니다", rectangleVolume);
        
        
        //inch to cm
        CGFloat cm = [InchToCm inchToCm:3];
        NSLog(@" %f", cm);
        
        //cm to inch
        CGFloat inch = [InchToCm cmToInch:3];
        NSLog(@" %f", inch);

//원
        Circle *c1 = [[Circle alloc] init];
        //면적
        CGFloat circle = [c1 circle:10];
        NSLog(@"원의 면적은 %f 입니다", circle);
        
        //둘레
        CGFloat circlePerimeter = [c1 circlePerimeter:(CGFloat)50];
        NSLog(@"원의 둘레는 %f 입니다", circlePerimeter);
        
        //실린더부피
        CGFloat cylinder = [c1 cylinder:(CGFloat)10
                                 height:10];
        NSLog(@"원의 실린더 부피는 %f 입니다", cylinder);
        
        //구 부피
        CGFloat sphere = [c1 sphere:(CGFloat)10];
        NSLog(@"구의 부피는 %f 입니다", sphere);
        //
        
//삼각형 면적
        Triangle *tr1 = [[Triangle alloc] init];
        
        CGFloat triangle = [tr1 triangle:(CGFloat)10
                                  height:(CGFloat)20];
        NSLog(@"삼각형의 면적은 %f 입니다", triangle);
        
//사다리꼴 면적
        Trapezoid *tz1 = [[Trapezoid alloc] init];
        CGFloat trapezoid = [tz1 trapezoid:(CGFloat)10
                                    upSide:(CGFloat)5
                                     height:(CGFloat)10];
        NSLog(@"사다리꼴의 면적은 %f 입니다", trapezoid);

//원뿔부피
        Cone *co1 = [[Cone alloc] init];
        CGFloat cone = [co1 cone:(CGFloat)10
                         height:(CGFloat)10];
        NSLog(@"원뿔부피는 %f 입니다",cone);
        
                        
        
        
    }
    return 0;
}
