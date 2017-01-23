//
//  main.m
//  0119Person
//
//  Created by Hanson Jung on 2017. 1. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UniversityStudent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool
    
    /*
     
     {
     
     
     int i = 17;
     int *addressOfI = &i;
     printf("i stores its value at %p\n", addressOfI);
     printf("this function starts at %p\n", main);
     return 0;
     
     }
         */
    
    {
         
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *man = [[Person alloc] init];
        man.name = @"잭";
        
        

        Student *tom = [[Student alloc] initWithName:@"톰"];
//      Student *tom = [[Student alloc] init];
//      tom.name = @"톰";
        tom.age = 15;
        NSLog(@"%@",tom.name);
        
        
        
        Student *math = [[Student alloc] init];
        math.item = @"수학";
        
        UniversityStudent *busan = [[UniversityStudent alloc] init];
        UniversityStudent *han = [[UniversityStudent alloc] init];
        han.name = @"한";
        busan.where = @"부산";
        
        
        
        [man setWeight:9 setHeight:9];
        

        [tom studyTo];
        NSLog(@"학생 %@은 %@을 공부한다", tom.name, math.item);
        
        [han studyTo];
        
        
        
        
        
        
    }
    return 0;
}
