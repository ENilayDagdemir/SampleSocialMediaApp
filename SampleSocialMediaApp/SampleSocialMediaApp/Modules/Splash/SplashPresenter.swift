//
//  SplashPresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//  
//

import Foundation

class SplashPresenter {

    // MARK: - Properties
    weak var view: ISplashView?
    var router: ISplashRouter?
}

extension SplashPresenter: ISplashPresenter {
    func viewDidLoad() {
        view?.setTitle(to: SplashConstants.title)
        view?.updatePageControl()
    }

    func nextButtonPressed() {
        view?.setNextUI()
        view?.updatePageControl()
    }

    func dashboardNavigateButtonPressed() {
        router?.navigateToDashboard()
    }
}
