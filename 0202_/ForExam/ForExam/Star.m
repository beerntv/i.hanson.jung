//
//  Star.m
//  ForExam
//
//  Created by Hanson Jung on 2017. 2. 2..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "Star.h"

@implementation Star

+ (void)star:(NSInteger)num
{
    for (NSInteger i = 1; i <= num; i+=1) {
        
        for (NSInteger j = 1; j <= i; j+=1) {
            printf("*");
            
        }
        
        printf("\n");
        
        
        
    }
}

+ (void)starDecrese:(NSInteger)num
{
    for (NSInteger i = 1; i <= num; i+=1) {
        
        for (NSInteger j = num; j >= i; j-=1) {
            printf("*");
            
        }
        
        printf("\n");
        
        
        
    }
}

// 갯수만큼 트리
+ (void)starTree:(NSInteger)num
{
    for (NSInteger i = 1; i <= num; i+=1) {
        
        for (NSInteger j = num; j >= i; j-=1) {
            printf(" ");
            
        }
        
        for (NSInteger k = 1; k <=i; k+=1) {
            printf("* ");
            
        }
        
        printf("\n");
        
        
        
    }
}




//+ (void)starToNSLog:(NSInteger)num
//{
//    for (NSInteger i = 1; i <= num; i+=1) {
//        NSString i = 
//    }
//    
//}
//- (NSString *)stringByAppendingString:(NSString *)aString;
@end
