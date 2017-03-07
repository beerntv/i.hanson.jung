//
//  CustomCell.m
//  ContactList
//
//  Created by Hanson Jung on 2017. 3. 6..
//  Copyright © 2017년 waaoo. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.imgView.layer.cornerRadius = 30.0;
    self.imgView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
