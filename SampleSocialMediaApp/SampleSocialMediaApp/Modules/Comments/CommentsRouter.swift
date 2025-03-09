//
//  CommentsRouter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 31.01.2022.
//  
//

import UIKit

class CommentsRouter {

    // MARK: - Properties
    weak var view: UIViewController?

    // MARK: - Static methods
    static func setupModule() -> CommentsViewController {
        let viewController = UIStoryboard.loadViewController() as CommentsViewController
        return viewController
    }
}
