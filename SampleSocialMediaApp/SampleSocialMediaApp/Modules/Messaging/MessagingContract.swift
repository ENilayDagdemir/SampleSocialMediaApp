//
//  MessagingContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

protocol IMessagingView: AnyObject {
    func setUIElements(from convetsation: Conversation)
    func setupTableView()
    func reloadTableView()
}

protocol IMessagingPresenter: IBasePresenter {
    func setMessagingItem(to conversation: Conversation)
    func getMessages() -> [MessageDetails]
}
