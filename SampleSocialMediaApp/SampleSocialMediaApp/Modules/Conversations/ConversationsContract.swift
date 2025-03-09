//
//  ConversationsContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

protocol IConversationsView: AnyObject {
    func addMenuButton()
    func prepareSearchBar()
    func setupTableView()
    func reloadTableView()
}

protocol IConversationsPresenter: IBasePresenter {
    func getConversations() -> [Conversation]
    func conversationPressed(with pressedItem: Conversation)
}

protocol IConversationsInteractor: AnyObject {
    func retrieveConversations()
}

protocol IConversationsInteractorToPresenter: AnyObject {
    func conversationsRetrieved(_ conversations: [Conversation])
}

protocol IConversationsRouter: AnyObject {
    func navigateToMessaging(with pressedItem: Conversation)
}
