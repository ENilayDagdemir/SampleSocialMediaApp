//
//  UIStoryboard+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//

import UIKit

extension UIStoryboard {
    static func loadViewController<T>() -> T where T: StoryboardLoadable, T: UIViewController {
        UIStoryboard(name: T.storyboardName(),
                     bundle: nil).instantiateViewController(withIdentifier: T.storyboardIdentifier()) as! T
        // swiftlint:disable:previous force_cast
    }
}
