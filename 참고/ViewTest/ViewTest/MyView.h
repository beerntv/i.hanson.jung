//
//  MyView.h
//  ViewTest
//
//  Created by youngmin joo on 2017. 2. 6..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyViewDelegate;
//프로토콜 선언

@interface MyView : UIView

@property (weak) id<MyViewDelegate> delegate;

@end

@protocol MyViewDelegate <NSObject>

//프로토콜로 정의된 메서드
- (void)didSelectedBtn:(UIButton *)btn;


@end
