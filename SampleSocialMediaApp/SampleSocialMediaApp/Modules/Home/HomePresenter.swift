//
//  HomePresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class HomePresenter {

    // MARK: - Properties
    weak var view: IHomeView?
    var router: IHomeRouter?
    var interactor: IHomeInteractor?
    private var posts: [Post] = [Post]()
    private var stories: [Story] = [Story]()
}

extension HomePresenter: IHomePresenter {
    func viewDidLoad() {
        interactor?.retrievePosts()
        interactor?.retrieveStories()
        view?.setupTableView()
        view?.setupCollectionView()
    }

    func getPosts() -> [Post] {
        posts
    }

    func getStories() -> [Story] {
        stories
    }

    func onConversationsButtonPressed() {
        router?.navigateToConversations()
    }
}

extension HomePresenter: IHomeInteractorToPresenter {
    func postsRetrieved(_ posts: [Post]) {
        self.posts = posts
        view?.reloadTableView()
    }

    func storiesRetrieved(_ stories: [Story]) {
        self.stories = stories
        view?.reloadCollectionView()
    }
}
