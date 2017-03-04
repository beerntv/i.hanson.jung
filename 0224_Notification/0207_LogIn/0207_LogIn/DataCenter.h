//
//  DataCenter.h
//  0207_LogIn
//
//  Created by Hanson Jung on 2017. 2. 24..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property (nonatomic) NSString *logInValue;
@property (nonatomic) NSString *pw;

+ (instancetype)sharedInstance;


- (void) setMyPw:(NSString *)pw;


@end
