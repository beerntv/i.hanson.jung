//
//  MyView.h
//  0206_Protocol
//
//  Created by Hanson Jung on 2017. 2. 6..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyViewDelegate;

@interface MyView : UIView
@property (weak) id<MyViewDelegate> delegate;

@end
