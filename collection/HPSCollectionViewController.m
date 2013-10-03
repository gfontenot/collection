//
//  HPSCollectionViewController.m
//  collection
//
//  Created by Gordon Fontenot on 10/2/13.
//  Copyright (c) 2013 Gordon Fontenot. All rights reserved.
//

#import "HPSCollectionViewController.h"
#import "HPSCViewCell.h"

@implementation HPSCollectionViewController

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HPSCViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSArray *visibleCells = ((UICollectionView *)scrollView).visibleCells;

    [visibleCells enumerateObjectsUsingBlock:^(HPSCViewCell *cell, NSUInteger idx, BOOL *stop) {
        CGFloat correctedY = cell.center.y - scrollView.contentOffset.y;
        CGFloat math = (correctedY - scrollView.center.y) / 10;
        CGFloat cellCenterY = CGRectGetHeight(cell.frame) / 2;

        cell.imageView.center = CGPointMake(CGRectGetWidth(cell.frame) / 2, cellCenterY - math);
    }];
}

@end
