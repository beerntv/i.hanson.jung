//
//  DataCenter.h
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 17..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataCenter : NSObject

@property (nonatomic) NSString *token;

+ (instancetype)sharedInstance;

@end
