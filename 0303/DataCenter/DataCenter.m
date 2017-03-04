//
//  DataCenter.m
//  DataCenter
//
//  Created by Hanson Jung on 2017. 3. 3..
//  Copyright © 2017년 waaoo. All rights reserved.
//


// 클래스파일 생성할때 NSObject 를 상속받는다



#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedInstance {
    
    static DataCenter *dataCenter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        [dataCenter setProperty];
    });
    
    return dataCenter;
}

- (void)setProperty {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Sample" ofType:@"plist"];
    self.plistArr = [NSArray arrayWithContentsOfFile:filePath];
    self.plistDic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    
}



@end
