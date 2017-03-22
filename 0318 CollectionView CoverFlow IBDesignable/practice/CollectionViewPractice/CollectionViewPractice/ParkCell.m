//
//  ParkCell.m
//  CollectionViewPractice
//
//  Created by Hanson Jung on 2017. 3. 21..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import "ParkCell.h"

@interface ParkCell ()
@property (weak, nonatomic) IBOutlet UIImageView *parkImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end


@implementation ParkCell

- (void)inputParkData:(ParkData *)data {
    
    self.parkImageView.image = [UIImage imageNamed:data.parkPhotoString];
    self.nameLabel.text = data.parkNameString;
    
}

@end
