//
//  ConversationsRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class ConversationsRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> ConversationsViewController {
        let viewController = UIStoryboard.loadViewController() as ConversationsViewController
        let presenter = ConversationsPresenter()
        let router = ConversationsRouter()
        let interactor = ConversationsInteractor()
        let tableViewAdapter = ConversationsTableViewAdapter(presenter: presenter)

        viewController.presenter =  presenter
        viewController.tableViewAdapter = tableViewAdapter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension ConversationsRouter: IConversationsRouter {
    func navigateToMessaging(with pressedItem: Conversation) {
        view?.navigationController?.pushViewController(MessagingRouter.setupModule(with: pressedItem),
                                                       animated: true)
    }
}
