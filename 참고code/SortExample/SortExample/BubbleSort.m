//
//  BubbleSort.m
//  SortExample
//
//  Created by youngmin joo on 2017. 2. 10..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort


- (NSArray *)bubleSort:(NSArray *)unSortedList
{
    
    NSMutableArray *sortedList = [NSMutableArray arrayWithArray:unSortedList];
    
    //알고리즘
    //리스트의 객수만큼 실행
    for(NSInteger i = 0; i < unSortedList.count; i++)
    {
        //비교해서 가장 큰수를 맨뒤로 이동
        for (NSInteger j = 0; j < unSortedList.count-i-1; j++) {
            //만약 j+1번째가 list의 길이보다 크다면 종료
            //            if (j+1 == unSortedList.count-i) {
            //                break;
            //            }
            NSInteger firstNum = [[sortedList objectAtIndex:j] integerValue];
            NSInteger secondNum = [[sortedList objectAtIndex:j+1] integerValue];
            
            //i번째와 i+1번째 두수를 비교
            if (firstNum > secondNum) {
                // i > i+1 이라면 두수를 스왑
                //                [sortedList exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                
                [sortedList replaceObjectAtIndex:j withObject:[NSString stringWithFormat:@"%ld",secondNum]];
                [sortedList replaceObjectAtIndex:j+1 withObject:[NSString stringWithFormat:@"%ld",firstNum]];
                
            }
            
        }
    }
    
    
    return sortedList;
}



@end
