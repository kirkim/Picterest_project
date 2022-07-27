//
//  CustomCollectionViewDelegate.swift
//  Picterest
//
//  Created by 김기림 on 2022/07/25.
//

import UIKit

protocol CustomCollectionViewLayoutDelegate: AnyObject {
    func collectionView(_ collectionView:UICollectionView, heightMultiplierForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat
    func collectionView(_ collectionView:UICollectionView, numberOfColumnsInSection section: Int) -> Int
    func collectionView(heightFooterAtIndexPath indexPath:IndexPath) -> CGFloat
}
