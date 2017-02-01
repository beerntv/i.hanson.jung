//
//  Developer.m
//  0131_remindQuiz
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Developer.h"


@implementation Developer

- (void)makeProgram:(NSString *)code
{
    NSLog(@"내가 늘 하는 일은 %@ 이지", code);
    
}

-(void)myAgeIS:(NSUInteger)age{
    
}

+ (BOOL)checkDeveloper:(Person *)p1
{
    if ([p1.job isEqualToString:@"Developer"])
    {
        NSLog(@"그의 직업은 개발자가 맞습니다");
        return YES;

    }else{
        return NO;
    }
    
    
    
}
@end
