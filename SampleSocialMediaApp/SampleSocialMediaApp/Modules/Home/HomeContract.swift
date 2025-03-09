//
//  HomeContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

protocol IHomeView: AnyObject {
    func setupCollectionView()
    func setupTableView()
    func reloadTableView()
    func reloadCollectionView()
}

protocol IHomePresenter: IBasePresenter {
    func getPosts() -> [Post]
    func getStories() -> [Story]
    func onConversationsButtonPressed()
}

protocol IHomeInteractor: AnyObject {
    func retrievePosts()
    func retrieveStories()
}

protocol IHomeInteractorToPresenter: AnyObject {
    func postsRetrieved(_ posts: [Post])
    func storiesRetrieved(_ stories: [Story])
}

protocol IHomeRouter: AnyObject {
    func navigateToConversations()
}
