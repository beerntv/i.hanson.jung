//
//  main.m
//  0131_remindQuiz
//
//  Created by Hanson Jung on 2017. 1. 31..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Developer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        Person *jack = [[Person alloc] init];
        jack.name = @"jack";
        jack.age = 29;
        jack.job = @"Developer";
        
        [jack myNameIs:(NSString *)jack.name];
        
        [jack initWithName:@"철수"
                    setJob:@"Developer"
                   myAgeIs:50
              myBirthdayIs:@"1999/12/31"];
        
       
        [jack myNameIs:(NSString *)jack.name];
       
        [jack isMyBirthday:@"2017/01/30"];
        
//       Developer *p1 = [[Developer alloc] init];
        BOOL D1 = [Developer checkDeveloper:jack];
        
        
    }
    return 0;
}
