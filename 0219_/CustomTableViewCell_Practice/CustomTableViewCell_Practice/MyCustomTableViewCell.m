//
//  MyCustomTableViewCell.m
//  CustomTableViewCell_Practice
//
//  Created by Hanson Jung on 2017. 2. 19..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "MyCustomTableViewCell.h"

@implementation MyCustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    [self creatSubview];
    [self updateLayout];
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
