//
//  DashboardViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class DashboardViewController: UITabBarController, StoryboardLoadable {
    // MARK: - Properties
    var presenter: IDashboardPresenter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tabBar.frame.size.height = DashboardConstants.tabBarHeight
    }
}

extension DashboardViewController: IDashboardView {
    func setTabBarControllers() {
        let homeController = UINavigationController(rootViewController: TabBarItem.home.viewController)
        let commentsController = UINavigationController(rootViewController: TabBarItem.comments.viewController)
        let addController = UINavigationController(rootViewController: TabBarItem.add.viewController)
        let favouritesController = UINavigationController(rootViewController: TabBarItem.favourites.viewController)
        let profileController = UINavigationController(rootViewController: TabBarItem.profile.viewController)

        homeController.tabBarItem = TabBarItem.home.tabBarItem
        commentsController.tabBarItem = TabBarItem.comments.tabBarItem
        addController.tabBarItem = TabBarItem.add.tabBarItem
        favouritesController.tabBarItem = TabBarItem.favourites.tabBarItem
        profileController.tabBarItem = TabBarItem.profile.tabBarItem

        viewControllers = [homeController, commentsController, addController, favouritesController, profileController]
    }
}
