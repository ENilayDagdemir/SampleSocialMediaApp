//
//  Conversation.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

struct Conversation {
    let profileImage: UIImage?
    let name: String
    let status: String
    let previewMessage: String
    let messageDetails: [MessageDetails]
}

struct MessageDetails {
    let type: MessageType
    let message: String
}

enum MessageType {
    case received, sent
}
