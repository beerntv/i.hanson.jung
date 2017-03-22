//
//  CoverLayout.h
//  Cover1
//
//  Created by Dabu on 2017. 3. 22..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface CoverLayout : UICollectionViewFlowLayout

@property CGFloat itemScale;
@property CGFloat itemAlpha;

@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end

@interface RoundView : UIView
@end
