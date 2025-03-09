//
//  MessagingPresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class MessagingPresenter {

    // MARK: - Properties
    weak var view: IMessagingView?
    private var messagingItem: Conversation?
}

extension MessagingPresenter: IMessagingPresenter {
    func viewDidLoad() {
        if let itemToSet = messagingItem {
            view?.setUIElements(from: itemToSet)
        }
        view?.setupTableView()
        view?.reloadTableView()
    }

    func setMessagingItem(to conversation: Conversation) {
        messagingItem = conversation
    }

    func getMessages() -> [MessageDetails] {
        messagingItem?.messageDetails ?? []
    }
}
