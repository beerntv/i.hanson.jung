//
//  NetworkModule.h
//  Network_login
//
//  Created by Hanson Jung on 2017. 3. 21..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NetworkModule : NSObject

+ (void)signpWithUsername:(NSString *)userName
             withPassword:(NSString *)passWord
      withPasswordReEnter:passWordReEnter
          completionBlock:(void (^)(BOOL isSuccess, NSDictionary *result))completionBlock;

@end
