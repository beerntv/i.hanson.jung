//
//  Student.m
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Student.h"

@interface Student ()


@end

@implementation Student

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.name = name;
        
    }
    return self;
    
}

- (id)studyTo
{
    
    NSLog(@"고딩은 열공중");

   

    
    return nil;
    
}



@end
