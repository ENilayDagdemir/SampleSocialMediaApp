//
//  MessagingRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class MessagingRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule(with pressedItem: Conversation) -> MessagingViewController {
        let viewController = UIStoryboard.loadViewController() as MessagingViewController
        let presenter = MessagingPresenter()
        let adapter = MessagingTableViewAdapter(presenter: presenter)

        viewController.presenter =  presenter
        viewController.tableViewAdapter = adapter

        presenter.view = viewController
        presenter.setMessagingItem(to: pressedItem)

        return viewController
    }
}
