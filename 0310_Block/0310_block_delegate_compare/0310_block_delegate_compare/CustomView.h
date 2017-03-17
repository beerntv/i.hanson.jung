//
//  CustomView.h
//  0310_block_delegate_compare
//
//  Created by Hanson Jung on 2017. 3. 11..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString *(^textBlock)(void);
@interface CustomView : UIView

@property (nonatomic, weak) IBOutlet UILabel *label;
@property (nonatomic, weak) IBOutlet UIButton *button;

@property (nonatomic) textBlock tb;

-(void)changeTextAction:(textBlock)text;


@end


