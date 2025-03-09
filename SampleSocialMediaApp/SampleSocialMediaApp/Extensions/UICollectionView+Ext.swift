//
//  UICollectionView+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

extension UICollectionView {
    private func nibFromClass(_ type: UICollectionReusableView.Type) -> UINib {
        UINib(nibName: type.nameOfClass, bundle: nil)
    }

    func registerCell<T: UICollectionReusableView>(_ cell: T.Type) {
        register(nibFromClass(cell), forCellWithReuseIdentifier: cell.nameOfClass)
    }
}
