//
//  CustomView.m
//  0310_block_delegate_compare
//
//  Created by Hanson Jung on 2017. 3. 11..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


-(void)changeTextAction:(textBlock)text {
    
    self.tb = text;
    
}

-(IBAction)selectedBtn:(id)sender {
    
    self.label.text = self.tb();
    
}

@end
