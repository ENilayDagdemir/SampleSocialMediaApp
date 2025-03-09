//
//  UIColor+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

extension UIColor {
    static func defaultColor() -> UIColor {
        .white
    }

    static var cadetBlue: UIColor {
        UIColor(named: "cadet_blue") ?? defaultColor()
    }

    static var lightSilver: UIColor {
        UIColor(named: "light_silver") ?? defaultColor()
    }

    static var whisper: UIColor {
        UIColor(named: "whisper") ?? defaultColor()
    }

    static var tealBlue: UIColor {
        UIColor(named: "teal_blue") ?? defaultColor()
    }

    static var dimGray: UIColor {
        UIColor(named: "dim_gray") ?? defaultColor()
    }

    static var matterhorn: UIColor {
        UIColor(named: "matterhorn") ?? defaultColor()
    }
}
