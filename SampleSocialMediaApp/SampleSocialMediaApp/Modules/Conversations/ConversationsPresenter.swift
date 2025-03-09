//
//  ConversationsPresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class ConversationsPresenter {

    // MARK: - Properties
    weak var view: IConversationsView?
    var router: IConversationsRouter?
    var interactor: IConversationsInteractor?
    private var conversations: [Conversation] = [Conversation]()
}

extension ConversationsPresenter: IConversationsPresenter {
    func viewDidLoad() {
        view?.addMenuButton()
        view?.prepareSearchBar()
        interactor?.retrieveConversations()
        view?.setupTableView()
    }

    func getConversations() -> [Conversation] {
        conversations
    }

    func conversationPressed(with pressedItem: Conversation) {
        router?.navigateToMessaging(with: pressedItem)
    }
}

extension ConversationsPresenter: IConversationsInteractorToPresenter {
    func conversationsRetrieved(_ conversations: [Conversation]) {
        self.conversations = conversations
        view?.reloadTableView()
    }
}
