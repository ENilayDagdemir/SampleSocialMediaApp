//
//  ProfilePresenter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class ProfilePresenter {

    // MARK: - Properties
    weak var view: IProfileView?
    var interactor: IProfileInteractor?
    private var images: [UIImage] = [UIImage]()
}

extension ProfilePresenter: IProfilePresenter {
    func viewDidLoad() {
        interactor?.retrieveImages()
        view?.setLayoutDelegate()
        view?.setupCollectionView()
    }

    func getImages() -> [UIImage] {
        images
    }
}

extension ProfilePresenter: IProfileInteractorToPresenter {
    func imagesRetrieved(_ images: [UIImage]) {
        self.images = images
        view?.reloadCollectionView()
    }
}
