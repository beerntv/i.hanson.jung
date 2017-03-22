//
//  CornerView.h
//  Cover1
//
//  Created by Hanson Jung on 2017. 3. 22..
//  Copyright © 2017년 Dabu. All rights reserved.
//



// ************ IB_DESIGNABLE 테스트
#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface CornerView : UIView

@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end


@interface RoundView : UIView
// 뷰마다 interface를 만들어서 수정할때 한번에 쉽게 할 수 있다
@end
