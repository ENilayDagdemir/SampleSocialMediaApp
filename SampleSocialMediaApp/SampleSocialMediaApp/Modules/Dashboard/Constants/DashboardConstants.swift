//
//  DashboardConstants.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

struct DashboardConstants {
    static let tabBarHeight: CGFloat = 83.0
}
enum TabBarItem: Int {
    case home, comments, add, favourites, profile

    var icon: UIImage {
        switch self {
        case .home: return #imageLiteral(resourceName: "home_icon")
        case .comments: return #imageLiteral(resourceName: "conversations_icon")
        case .add: return #imageLiteral(resourceName: "add_icon")
        case .favourites: return #imageLiteral(resourceName: "favourite_icon")
        case .profile: return #imageLiteral(resourceName: "profile_icon")
        }
    }

    var tabBarItem: UITabBarItem {
        switch self {
        case .home: return UITabBarItem(title: nil,
                                        image: TabBarItem.home.icon,
                                        tag: TabBarItem.home.rawValue)
        case .comments: return UITabBarItem(title: nil,
                                                 image: TabBarItem.comments.icon,
                                                 tag: TabBarItem.comments.rawValue)
        case .add: return UITabBarItem(title: nil,
                                       image: TabBarItem.add.icon,
                                       tag: TabBarItem.add.rawValue)
        case .favourites: return UITabBarItem(title: nil,
                                              image: TabBarItem.favourites.icon,
                                              tag: TabBarItem.favourites.rawValue)
        case .profile: return UITabBarItem(title: nil,
                                           image: TabBarItem.profile.icon,
                                           tag: TabBarItem.profile.rawValue)
        }
    }

    var viewController: UIViewController {
        switch self {
        case .home: return HomeRouter.setupModule()
        case .comments: return CommentsRouter.setupModule()
        case .add: return AddRouter.setupModule()
        case .favourites: return FavouritesRouter.setupModule()
        case .profile: return ProfileRouter.setupModule()
        }
    }
}
