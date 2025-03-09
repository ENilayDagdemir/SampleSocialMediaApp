//
//  UITableView+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

extension UITableView {
    private func nibFromClass(_ type: UIView.Type) -> UINib {
        UINib(nibName: type.nameOfClass, bundle: nil)
    }

    func dequeue<T: UITableViewCell>(cell: T.Type, indexPath: IndexPath) -> T? {
        dequeueReusableCell(withIdentifier: T.nameOfClass, for: indexPath) as? T
    }

    func registerCell<T: UITableViewCell>(_ cell: T.Type) {
        register(nibFromClass(cell), forCellReuseIdentifier: cell.nameOfClass)
    }
}
