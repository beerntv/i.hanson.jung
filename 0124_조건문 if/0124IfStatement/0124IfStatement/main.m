//
//  main.m
//  0124IfStatement
//
//  Created by Hanson Jung on 2017. 1. 24..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grade.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Grade *G1 = [[Grade alloc] init];
        
        //[Grade (NSString *)toGrade:93);
        
        NSString *grade = [Grade toGrade:93];
        NSLog(@"%@",grade);
        
        //위에거 줄인 방식. 같은거다.
        //NSLog(@"%@",[Grade toGrade:93] );
        
        
    }
    return 0;
}
