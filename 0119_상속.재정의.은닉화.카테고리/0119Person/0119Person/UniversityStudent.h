//
//  UniversityStudent.h
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface UniversityStudent : Student


@property NSString *where;
@property NSString *major;

-(id)goMT:(NSString *)where;


@end
