//
//  MasterViewController.m
//  CollectionViewPractice
//
//  Created by Dabu on 2017. 3. 19..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import "MasterViewController.h"
#import "DataSource.h"
#import "ParkCell.h"
#import "DetailViewController.h"
@interface MasterViewController ()
<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;
@property DataSource *source;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.source = [[DataSource alloc] init];
    
    CGFloat itemWidth = self.mainCollectionView.frame.size.width / 3.0f; 
//    CGFloat itemHeight = self.mainCollectionView.frame.size.height;
    
    self.layout.itemSize = CGSizeMake(itemWidth, itemWidth);
    
//    CGFloat itemWidth = (self.mainCollectionView.frame.size.width -10 - 10 - 10) / 2.0f; // 좌우 10씩 빼주고 사이 10 빼주고
//    self.layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10); //좌우 10씩 마진
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailViewController *nextVC = segue.destinationViewController;
    nextVC.parkData = sender;
    
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ParkData *data = [self.source parkDataAtIndexPath:indexPath];
    
    [self performSegueWithIdentifier:@"DetailSegue" sender:data];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.source numberOfItems];
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ParkCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ParkCell" forIndexPath:indexPath];
    [cell inputParkData:[self.source parkDataAtIndexPath:indexPath]];
     
    return cell;
}
@end
