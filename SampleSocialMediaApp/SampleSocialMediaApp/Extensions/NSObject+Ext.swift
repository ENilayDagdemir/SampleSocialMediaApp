//
//  NSObject+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        String(describing: self)
    }
}
