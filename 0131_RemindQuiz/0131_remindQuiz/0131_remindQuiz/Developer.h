//
//  Developer.h
//  0131_remindQuiz
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Person.h"


@interface Developer : Person

- (void)makeProgram:(NSString *)code;

+ (BOOL)checkDeveloper:(Person *)p1;

@end
