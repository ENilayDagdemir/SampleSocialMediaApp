//
//  AppRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//

import UIKit

final class AppRouter {

    static var shared = AppRouter()
    var window: UIWindow? {
        UIApplication.shared.delegate?.window ?? UIWindow(frame: UIScreen.main.bounds)
    }

    func start() {
        let splashVC = SplashRouter.setupModule()
        let navigationController = UINavigationController(rootViewController: splashVC)
        navigationController.setNavigationBarHidden(true, animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
