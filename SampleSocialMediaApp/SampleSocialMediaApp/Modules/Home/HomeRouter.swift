//
//  HomeRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class HomeRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> HomeViewController {
        let viewController = UIStoryboard.loadViewController() as HomeViewController
        let presenter = HomePresenter()
        let router = HomeRouter()
        let interactor = HomeInteractor()
        let tableViewAdapter = PostsTableViewAdapter(presenter: presenter)
        let collectionViewAdapter = StoriesCollectionViewAdapter(presenter: presenter)

        viewController.presenter =  presenter
        viewController.tableViewAdapter = tableViewAdapter
        viewController.collectionViewAdapter = collectionViewAdapter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension HomeRouter: IHomeRouter {
    func navigateToConversations() {
        let conversationsVC = ConversationsRouter.setupModule()
        conversationsVC.hidesBottomBarWhenPushed = true
        view?.navigationController?.pushViewController(conversationsVC,
                                                       animated: true)
    }
}
