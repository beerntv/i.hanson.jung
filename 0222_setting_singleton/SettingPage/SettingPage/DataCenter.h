//
//  DataCenter.h
//  SettingPage
//
//  Created by Hanson Jung on 2017. 2. 23..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedInstance;

//예
@property (nonatomic) BOOL isOnOff, isOnOff1, isOnOff2;
//@property (nonatomic) NSMutableArray


@end
