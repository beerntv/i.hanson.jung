//
//  DataCenter.m
//  SettingPage
//
//  Created by Hanson Jung on 2017. 2. 23..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance {
    
    static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        
    });
    
    return dataCenter;
    
}

@end
