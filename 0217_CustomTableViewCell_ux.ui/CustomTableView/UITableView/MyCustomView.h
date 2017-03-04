//
//  MyCustomView.h
//  UITableView
//
//  Created by Hanson Jung on 2017. 2. 17..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView

- (void)updateLayout;

- (void)setDataWithIMGName:(NSString *)imgUrlStr
                      name:(NSString *)nameStr
                       msg:(NSString *)msgStr;


@end
