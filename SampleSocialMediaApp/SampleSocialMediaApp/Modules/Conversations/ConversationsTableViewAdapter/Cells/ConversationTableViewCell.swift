//
//  ConversationTableViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class ConversationTableViewCell: UITableViewCell {
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblMessage: UILabel!

    func setup(from conversation: Conversation) {
        profileImageView.image = conversation.profileImage
        lblName.text = conversation.name
        lblMessage.text = conversation.previewMessage
    }
}
