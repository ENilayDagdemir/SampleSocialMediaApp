//
//  DashboardContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

protocol IDashboardView: AnyObject {
    func setTabBarControllers()
}

protocol IDashboardPresenter: IBasePresenter {}
