//
//  ProfileContract.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

protocol IProfileView: AnyObject {
    func setLayoutDelegate()
    func setupCollectionView()
    func reloadCollectionView()
}

protocol IProfilePresenter: IBasePresenter {
    func getImages() -> [UIImage]
}

protocol IProfileInteractor: AnyObject {
    func retrieveImages()
}

protocol IProfileInteractorToPresenter: AnyObject {
    func imagesRetrieved(_ images: [UIImage])
}
