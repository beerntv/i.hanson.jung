//
//  DataCenter.m
//  0207_LogIn
//
//  Created by Hanson Jung on 2017. 2. 24..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance {
    
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        dataCenter = [[DataCenter alloc] init];
        
    });
    
    
    return dataCenter;
    
    
}


- (void) setMyPw:(NSString *)pw {
    [[NSUserDefaults standardUserDefaults] setObject:pw forKey:pw];
}

// ********************************
//- (void) setMyID:(NSString *)ID {
//    [[NSUserDefaults standardUserDefaults] setObject:ID forKey:@"ID"];
//}
//
//- (void) setMyPW:(NSString *)PW{
//    [[NSUserDefaults standardUserDefaults] setObject:PW forKey:@"PW"];
//}
//
//- (NSString*) getMyID
//{
//    return [[NSUserDefaults standardUserDefaults] objectForKey:@"ID"];
//}
//
//- (NSString*) getMyPW
//{
//    return [[NSUserDefaults standardUserDefaults] objectForKey:@"PW"];
//}


//***************** 소스코드
//        [DataCenter sharedInstance].ID = self.idTextField.text;
//        [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].ID forKey:@"ID"];
//        [DataCenter sharedInstance].PW = self.pwTextField.text;
//        [[NSUserDefaults standardUserDefaults] setObject:[DataCenter sharedInstance].PW forKey:@"PW"];

// 소스코드에서 위에 방식 대신 데이터센터에 모아놓고 셋하는 방식으로 대신할 수 있다.
// 이렇게 가급적 데이터센터에 모든 데이터를 모아놓는 방식으로
//[[DataCenter sharedInstance] setMyID:self.idTextField.text];
//[[DataCenter sharedInstance] setMyPW:self.pwTextField.text];


@end
