//
//  DashboardRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class DashboardRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> DashboardViewController {
        let viewController = UIStoryboard.loadViewController() as DashboardViewController
        let presenter = DashboardPresenter()

        viewController.presenter =  presenter
        presenter.view = viewController

        return viewController
    }
}
