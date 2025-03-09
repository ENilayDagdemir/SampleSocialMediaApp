//
//  DashboardPresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class DashboardPresenter {

    // MARK: - Properties
    weak var view: IDashboardView?
}

extension DashboardPresenter: IDashboardPresenter {
    func viewDidLoad() {
        view?.setTabBarControllers()
    }
}
