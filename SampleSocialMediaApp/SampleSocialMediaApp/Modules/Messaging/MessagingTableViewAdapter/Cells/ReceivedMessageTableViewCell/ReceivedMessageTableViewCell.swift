//
//  ReceivedMessageTableViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class ReceivedMessageTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet private weak var lblMessage: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        lblMessage.translatesAutoresizingMaskIntoConstraints = false
    }

    func setup(from message: String) {
        lblMessage.text = message
        lblMessage.sizeToFit()
    }
}
