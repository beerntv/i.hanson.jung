//
//  CoverLayout.m
//  Cover1
//
//  Created by Dabu on 2017. 3. 22..
//  Copyright © 2017년 Dabu. All rights reserved.
//

#import "CoverLayout.h"

@implementation CoverLayout


- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds {

    return YES;
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    
    
    NSArray *originalAttributes = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray *changedAttributes = [[NSMutableArray alloc] init];
    
    
    for (UICollectionViewLayoutAttributes *attribute in originalAttributes) {
        
        UICollectionViewLayoutAttributes *finishedAttribute = [attribute copy];
        
        // 속성의 변화를 준다!
        [self changedAttribute:finishedAttribute];
        
        [changedAttributes addObject:finishedAttribute];
    }
    
    return changedAttributes;
}

- (void)changedAttribute:(UICollectionViewLayoutAttributes *)attribute {
    
    CGFloat collectionViewCenter = self.collectionView.frame.size.width / 2.0f;
    CGFloat contentXOffset = self.collectionView.contentOffset.x;
    
    CGFloat actualXOffset = collectionViewCenter + contentXOffset;
    
    CGFloat maxDistance = self.itemSize.width + self.minimumLineSpacing;
    
    CGFloat distance = MIN(fabs(actualXOffset - attribute.center.x), maxDistance);
    
    CGFloat ratio = (maxDistance - distance) / maxDistance;
    
    CGFloat scale = (ratio * 0.5f) + 1.0f;
    CGFloat alpha = (ratio * 0.5f) + 0.5f;
    
    attribute.alpha = alpha;
    attribute.transform3D = CATransform3DScale(CATransform3DIdentity, scale, scale, 1);
    attribute.zIndex = 10 * alpha;
    
}


// 여러개의 셀의 센터값중 어느게 중앙에 제일 가깝나 찾아서

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity {

    CGFloat actualContentOffset = proposedContentOffset.x + (self.collectionView.frame.size.width /2.0f);
    NSArray *attributeArray = [self layoutAttributesForElementsInRect:self.collectionView.bounds];
    
    NSArray *resultArray = [attributeArray sortedArrayUsingComparator:^NSComparisonResult(UICollectionViewLayoutAttributes * _Nonnull obj1, UICollectionViewLayoutAttributes * _Nonnull obj2) {
        
    //obj1과 obj2를 비교하면서 정렬
        if (fabs(obj1.center.x - actualContentOffset) > fabs(obj2.center.x - actualContentOffset)) {
            //fabs 절대값
            
            return NSOrderedDescending;
        } else if (fabs(obj1.center.x - actualContentOffset) < fabs(obj2.center.x - actualContentOffset)) {
        
            return NSOrderedAscending;
            
        } else {
            
            return NSOrderedSame;
            
        }
    }];
    
    CGFloat resultOffset = ((UICollectionViewLayoutAttributes *)resultArray.firstObject).center.x;
    CGPoint targetOffset = CGPointMake(resultOffset - (self.collectionView.frame.size.width /2.0f), proposedContentOffset.y);
    
    return targetOffset;
    
}





























@end
