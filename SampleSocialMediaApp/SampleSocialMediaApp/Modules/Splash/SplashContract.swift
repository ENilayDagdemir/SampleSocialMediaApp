//
//  SplashContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//  
//

import Foundation

protocol ISplashView: AnyObject {
    func setTitle(to title: NSAttributedString)
    func updatePageControl()
    func setNextUI()
}

protocol ISplashPresenter: IBasePresenter {
    func nextButtonPressed()
    func dashboardNavigateButtonPressed()
}

protocol ISplashRouter: AnyObject {
    func navigateToDashboard()
}
