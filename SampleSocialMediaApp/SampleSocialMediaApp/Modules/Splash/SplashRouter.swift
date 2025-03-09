//
//  SplashRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//  
//

import UIKit

class SplashRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> SplashViewController {
        let viewController = UIStoryboard.loadViewController() as SplashViewController
        let presenter = SplashPresenter()
        let router = SplashRouter()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router

        router.view = viewController

        return viewController
    }
}

extension SplashRouter: ISplashRouter {
    func navigateToDashboard() {
        view?.navigationController?.pushViewController(DashboardRouter
                                                       .setupModule(), animated: true)
    }
}
