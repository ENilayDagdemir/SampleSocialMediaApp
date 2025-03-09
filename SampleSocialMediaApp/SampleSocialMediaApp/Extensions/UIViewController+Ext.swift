//
//  UIViewController+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

extension UIViewController {
    func resetNavigationBar() {
        let backButton = UIBarButtonItem(image: UIImage(named: "navigation_back_button_image"),
                                         style: .plain,
                                         target: self,
                                         action: #selector(onBackPressed))

        backButton.title = ""
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationItem.leftBarButtonItem = backButton
    }

    @objc func onBackPressed() {
        navigationController?.popViewController(animated: true)
    }
}
