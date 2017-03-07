//
//  DataCenter.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 6..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+ (instancetype)sharedData{
    
    static DataCenter *data;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        data = [[self alloc] init];
        
    });
    
    return data;
}

- (NSArray *)loadFriendList {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    for (NSString *str in paths) {
        NSLog(@"%@", str);
    }
    
    
    NSString *basePath = [paths objectAtIndex:0];
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"ContactList.plist"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:docuPath])
    {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"ContactList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:docuPath error:nil];
        
    }
    
    
    NSArray *array = [NSArray arrayWithContentsOfFile:docuPath];
    
    NSLog(@"%@,%@", [[array objectAtIndex:0] objectForKey:@"name"], [[array objectAtIndex:0] objectForKey:@"phone number"]);
    
    
    return paths;
    
}






@end
