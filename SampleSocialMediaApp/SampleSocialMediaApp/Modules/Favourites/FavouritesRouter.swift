//
//  FavouritesRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class FavouritesRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> FavouritesViewController {
        let viewController = UIStoryboard.loadViewController() as FavouritesViewController
        let router = AddRouter()
        router.view = viewController

        return viewController
    }
}
