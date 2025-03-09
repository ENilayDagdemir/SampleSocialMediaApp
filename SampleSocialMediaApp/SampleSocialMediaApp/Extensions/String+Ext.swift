//
//  String+Ext.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

extension String {
    func boldAttributedText(boldTexts: [String],
                            boldFontSize: CGFloat,
                            prefixColor: UIColor,
                            prefixFontSize: CGFloat) -> NSAttributedString {
        let nsString = self as NSString
        let attributedString = NSMutableAttributedString(string: self,
                                                         attributes: [NSAttributedString.Key.font:
                                                                      UIFont.poppins(with: prefixFontSize),
                                                                      NSAttributedString.Key.foregroundColor:
                                                                      prefixColor])
        let boldFontAttribute = [NSAttributedString.Key.font: UIFont.poppinsBold(with: boldFontSize),
                                 NSAttributedString.Key.foregroundColor: UIColor.black]

        for text in boldTexts {
            attributedString.addAttributes(boldFontAttribute, range: nsString.range(of: text))
        }

        return attributedString
    }
}
