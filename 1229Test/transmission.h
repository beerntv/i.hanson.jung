//
//  transmission.h
//  Test
//
//  Created by Hanson Jung on 2017. 1. 3..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface transmission : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSString *carColor;

- (void)bootting;
- (void)accelerating;



@end
