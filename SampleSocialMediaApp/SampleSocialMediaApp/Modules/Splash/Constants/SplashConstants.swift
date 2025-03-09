//
//  SplashConstants.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//

import UIKit

struct SplashConstants {
    static let title: NSAttributedString =
                     "Welcome to\nSocial Media App!".boldAttributedText(boldTexts: ["Social Media App!"],
                                                              boldFontSize: 39,
                                                              prefixColor: .darkGray,
                                                              prefixFontSize: 18)
    static let emptyDotImage: UIImage = UIImage(named: "empty_dot") ?? UIImage()
    static let filledDotImage: UIImage = UIImage(named: "filled_dot") ?? UIImage()
    static let secondSplashIcon: UIImage = UIImage(named: "splash_icon_2") ?? UIImage()
    static let secondButtonImage: UIImage = UIImage(named: "splash_button_icon_2") ?? UIImage()
}
