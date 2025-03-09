//
//  UIFont+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

extension UIFont {
    class func poppins(with size: CGFloat) -> UIFont {
        UIFont(name: "Poppins-Regular", size: size) ?? UIFont.systemFont(ofSize: size)
    }

    class func poppinsBold(with size: CGFloat) -> UIFont {
        UIFont(name: "Poppins-Bold", size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
