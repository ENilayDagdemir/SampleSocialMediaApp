//
//  ProfileRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class ProfileRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> ProfileViewController {
        let viewController = UIStoryboard.loadViewController() as ProfileViewController
        let presenter = ProfilePresenter()
        let router = ProfileRouter()
        let interactor = ProfileInteractor()
        let adapter = ImagesCollectionViewAdapter(presenter: presenter)

        viewController.presenter =  presenter
        viewController.adapter = adapter

        presenter.view = viewController
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}
