//
//  QuickSort.m
//  SortExample
//
//  Created by youngmin joo on 2016. 10. 5..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (NSArray *)quickSort:(NSArray *)list
{
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    NSMutableArray *lessList = [[NSMutableArray alloc] init] ;
    NSMutableArray *greaterList =[[NSMutableArray alloc] init] ;
    
    if (unSortedList.count == 1)
    {
        return nil;
    }
    
    //pivot정하기
    NSNumber *pivotValue = [unSortedList objectAtIndex:0];
    [unSortedList removeObjectAtIndex:0];
    
    //Divide
    for (NSNumber *num in unSortedList)
    {
        if (num < pivotValue)
        {
            [lessList addObject:num];
        }
        else
        {
            [greaterList addObject:num];
        }
    }
    //병합
    NSMutableArray *sortedList = [[NSMutableArray alloc] init] ;
    [sortedList addObjectsFromArray:[self quickSort:lessList]];
    [sortedList addObject:pivotValue];
    [sortedList addObjectsFromArray:[self quickSort:greaterList]];
    
    return sortedList;
}

@end
