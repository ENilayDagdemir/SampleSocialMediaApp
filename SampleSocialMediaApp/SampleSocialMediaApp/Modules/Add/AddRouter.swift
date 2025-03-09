//
//  AddRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class AddRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> AddViewController {
        let viewController = UIStoryboard.loadViewController() as AddViewController
        let router = AddRouter()
        router.view = viewController

        return viewController
    }
}
