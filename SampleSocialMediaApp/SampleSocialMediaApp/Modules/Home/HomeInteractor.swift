//
//  HomeInteractor.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class HomeInteractor {

    // MARK: - Properties
    weak var output: IHomeInteractorToPresenter?
}

extension HomeInteractor: IHomeInteractor {
    func retrievePosts() {
        output?.postsRetrieved(HomeMock.posts)
    }

    func retrieveStories() {
        output?.storiesRetrieved(HomeMock.stories)
    }
}
