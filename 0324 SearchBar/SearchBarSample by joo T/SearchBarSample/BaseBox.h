//
//  BaseBox.h
//  SearchBarSample
//
//  Created by youngmin joo on 2017. 3. 24..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

static NSString * const userName = @"joo";
static NSInteger const width = 320;

static double const PI = 3.141592;

#define SYSTEM_VERSION [[UIDevice currentDevice] systemVersion]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
