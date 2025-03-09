//
//  StoryboardLoadable.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//

import UIKit

protocol StoryboardLoadable {
    static func storyboardName() -> String
    static func storyboardIdentifier() -> String
}

extension StoryboardLoadable where Self: UIViewController {
    static func storyboardName() -> String {
        String(describing: Self.self).replacingOccurrences(of: "ViewController", with: "")
    }

    static func storyboardIdentifier() -> String {
        String(describing: Self.self).replacingOccurrences(of: "ViewController", with: "")
    }
}
