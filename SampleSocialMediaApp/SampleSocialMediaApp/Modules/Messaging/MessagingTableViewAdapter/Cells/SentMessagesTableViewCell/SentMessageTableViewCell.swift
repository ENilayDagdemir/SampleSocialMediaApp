//
//  SentMessageTableViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class SentMessageTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet private weak var lblMessage: UILabel!

    func setup(from message: String) {
        lblMessage.text = message
    }
}
