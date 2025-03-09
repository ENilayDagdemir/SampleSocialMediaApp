//
//  ConversationsInteractor.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class ConversationsInteractor {

    // MARK: - Properties
    weak var output: IConversationsInteractorToPresenter?
}

extension ConversationsInteractor: IConversationsInteractor {
    func retrieveConversations() {
        output?.conversationsRetrieved(ConversationsMock.conversations)
    }
}
