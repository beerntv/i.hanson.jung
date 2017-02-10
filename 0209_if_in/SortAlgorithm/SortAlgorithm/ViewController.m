//
//  ViewController.m
//  SortAlgorithm
//
//  Created by Hanson Jung on 2017. 2. 9..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    NSArray *a1 = [[NSArray alloc] initWithObjects:@2, @3, @6, @4, @1, @5, nil];
    
    
    
    //[self bubbleSort:a1];
    //NSLog(@"%@",[self bubbleSort:a1]);
    
    //머지소트
    [self mergeSort:a1];
    NSLog(@"%@",[self mergeSort:a1]);
    
 //   a1  =  [self bubbleSort:a1];
    
}



    
//    NSArray *a1 = [[NSArray alloc] initWithObjects:@5, @3, @7, @1, @6, @9, @2, nil];
//    
////    NSInteger *value =
//


/*
 - (NSArray *)bubleSort:(NSArray *)unSortedArray {
 
 NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:unSortedArray];
 
 for (NSInteger i = 0; i < unSortedArray.count - 1; i += 1) {
 
 for (NSInteger j = 0; j < unSortedArray.count - 1 - i; j += 1) {
 
 if (resultArray[j] > resultArray[j+1]) {
 
 // swap!!
 NSNumber *tempValue = resultArray[j+1];
 resultArray[j+1] = resultArray[j];
 resultArray[j] = tempValue;
 }
 }
 }
 return resultArray;
 
 */

/* 1번
- (NSArray *)bubbleSort:(NSArray *)unSortedList {
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:unSortedList];
    
    for (NSInteger i = 0; i < unSortedList.count - 1; i += 1) {
        for (NSInteger j = 0; j < unSortedList.count - 1 - i; j += 1) {
            if (resultArray[j] > resultArray[j+1]) {
                
                NSNumber *tempValue = resultArray[j+1];
                resultArray[j+1] = resultArray[j];
                resultArray[j] = tempValue;
                
                NSLog(@"%@",resultArray);
                
            }
        }
    }
 
    
    
        
        
    //    [@2 stringValue];
    

//    NSLog(@"%@", unSortedList);
    return resultArray;
}
*/
/*
// 2번
- (NSArray *)bubbleSort:(NSArray *)unSortedList
{
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:unSortedList copyItems:YES];
 //   NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:unSortedList];
//    NSLog(@"%@",resultArray);

    
    
    for (NSInteger i = 0; i < unSortedList.count - 1; i += 1) {
        for (NSInteger j = 0; j < unSortedList.count - 1 - i; j += 1) {
            if (resultArray[j] > resultArray[j+1]) {
                NSNumber *tempValue = resultArray[j+1];
                resultArray[j+1] = resultArray[j];
                resultArray[j] =  tempValue;
                
                NSLog(@"%ld: %@",j, resultArray);
                
            }
            
            NSLog(@"i = %ld", i);
            
        }
            
    }
    
    
    return resultArray;
    
}
*/

/*
//3번반복연습
- (NSArray *)bubbleSort:(NSArray *)unSortedList
{
    NSMutableArray *resultArray = [[NSMutableArray alloc] initWithArray:unSortedList];
//    NSMutableArray *resultArray = [NSMutableArray arrayWithArray:unSortedList];
//  init 생략한 문법
    
    
    for (NSInteger i = 0; i < unSortedList.count -1; i += 1) {
        for (NSInteger j = 0; j < unSortedList.count - 1 - i; j += 1) {
            if (resultArray[j] > resultArray[j+1]) {
                NSNumber *tempValue = resultArray[j];
                resultArray[j] = resultArray[j+1];
                resultArray[j+1] = tempValue;
                
                
            }
            
        }
    }
    
    
    return resultArray;
    
}
*/


- (NSArray *)mergeSort:(NSArray *)dataArray {
    //아이템이 1개이거나 없으면 바로 리턴시킨다.
    if (dataArray.count < 2) {
        return dataArray;
    }
    
    //이외의 경우에는 비교를 수행해야 하므로, 우선 뮤터블 카피를 만들어 저장한다.
    NSMutableArray *sortingArray = [dataArray mutableCopy];
    
    if (sortingArray.count == 2) { //아이템이 2개면 두개만 비교한다.
        
        if (sortingArray[0] > sortingArray[1]) {
            [sortingArray exchangeObjectAtIndex:0 withObjectAtIndex:1];
        }
        
    } else if (sortingArray.count > 2) { //아이템이 2개 이상일 때 머지정렬을 시작한다.
        
        //배열을 가를 길이를 결정해서, 배열을 나눈다.
        NSInteger lengthOfArray1 = sortingArray.count / 2;
        NSInteger lengthOfArray2 = sortingArray.count - lengthOfArray1;
        NSArray *array1 = [sortingArray subarrayWithRange:NSMakeRange(0, lengthOfArray1)];
        NSArray *array2 = [sortingArray subarrayWithRange:NSMakeRange(lengthOfArray1, lengthOfArray2)];
        
        
        //각각 재귀적으로 결과값을 받는다. 반으로 나눈 가상의 정돈된 반. 내가 나를 불러서 소트한다.
        NSMutableArray *array1Result = [[self mergeSort:array1] mutableCopy];
        NSMutableArray *array2Result = [[self mergeSort:array2] mutableCopy];
        
        
        //리턴할 배열을 초기화한다.
        [sortingArray removeAllObjects];
        
        
        //둘 중에 하나의 배열 개수가 0이 되기 전까지 작은 것끼리 비교하여 작은 것을 결과 어레이에 넣고, 해당 아이템을 삭제한다.
        while (array1Result.count * array2Result.count > 0) {
            if ([array1Result firstObject]<[array2Result firstObject]) {
                [sortingArray addObject: [array1Result firstObject]];
                [array1Result removeObjectAtIndex:0];
            } else {
                [sortingArray addObject: [array2Result firstObject]];
                [array2Result removeObjectAtIndex:0];
            }
            NSLog(@"array1 작은 것끼리 비교하여 결과에 넣고 array1은 삭제 %@",array1Result);
            NSLog(@"array1 작은 것끼리 비교하여 결과에 넣고 array1은 삭제 %@",array2Result);
        }
        
        //남은 어레이의 큰 수들을 뒤에 붙인다.
        
        if (array1Result.count) {
            [sortingArray addObjectsFromArray:array1Result];
        } else {
            [sortingArray addObjectsFromArray:array2Result];
        }
        
    }
    
    return sortingArray; //결과 어레이 반환

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
