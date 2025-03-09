//
//  ProfileInteractor.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import Foundation

class ProfileInteractor {

    // MARK: - Properties
    weak var output: IProfileInteractorToPresenter?
}

extension ProfileInteractor: IProfileInteractor {
    func retrieveImages() {
        output?.imagesRetrieved(ProfileMock.images)
    }
}
