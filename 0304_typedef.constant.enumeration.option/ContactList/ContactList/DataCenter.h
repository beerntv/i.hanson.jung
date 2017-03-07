//
//  DataCenter.h
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 6..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedData;

- (NSArray *)loadFriendList;


@end
