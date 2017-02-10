//
//  SelectionSort.h
//  TestSort
//
//  Created by youngmin joo on 2016. 10. 7..
//  Copyright © 2016년 WingsCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectionSort : NSObject


//비교 횟수
@property NSInteger totalCompareCount;
//교환 횟수
@property NSInteger totalSwitchCount;

- (NSArray *)sort:(NSArray *)list;
@end
