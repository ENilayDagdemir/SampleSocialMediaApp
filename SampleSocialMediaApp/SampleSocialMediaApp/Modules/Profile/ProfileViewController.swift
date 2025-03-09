//
//  ProfileViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class ProfileViewController: UIViewController, StoryboardLoadable {
    // MARK: - IBOutlets
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblUserName: UILabel!
    @IBOutlet private weak var lblPostAmount: UILabel!
    @IBOutlet private weak var lblFollowingAmount: UILabel!
    @IBOutlet private weak var imagesCollectionView: UICollectionView!
    @IBOutlet private weak var lblFollowersAmount: UILabel!

    // MARK: - Properties
    var presenter: IProfilePresenter?
    var adapter: ImagesCollectionViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension ProfileViewController: IProfileView {
    func setLayoutDelegate() {
        if let layout = imagesCollectionView?.collectionViewLayout as? GalleryLayout {
            layout.delegate = adapter
        }
    }

    func setupCollectionView() {
        imagesCollectionView.delegate = adapter
        imagesCollectionView.dataSource = adapter
        imagesCollectionView.registerCell(ImagesCollectionViewCell.self)
    }

    func reloadCollectionView() {
        imagesCollectionView.reloadData()
    }
}
