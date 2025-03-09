//
//  ConversationConstants.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

struct ConversationConstants {
    static let menuIconName: String = "menu_button"
    static let searchBarIconName: String = "search_bar_icon"
    static let searchBarPlaceholderAttributedString: NSAttributedString =
                                                     NSAttributedString(string: "  Search for contacts",
                                                                        attributes:
                                                                        [NSAttributedString.Key.foregroundColor:
                                                                         UIColor.lightGray,
                                                                         NSAttributedString.Key.font:
                                                                         UIFont.poppins(with: 13)])
}
