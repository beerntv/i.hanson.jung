//
//  DataCenter.h
//  DataCenter
//
//  Created by Hanson Jung on 2017. 3. 3..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
@property NSArray *plistArr;
@property NSDictionary *plistDic;

+ (instancetype)sharedInstance;

@end
