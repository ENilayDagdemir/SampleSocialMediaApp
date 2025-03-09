//
//  ImagesCollectionViewAdapter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class ImagesCollectionViewAdapter: NSObject {
    private let presenter: IProfilePresenter

    init(presenter: IProfilePresenter) {
        self.presenter = presenter
    }
}

extension ImagesCollectionViewAdapter {
    func itemCount() -> Int {
        getImages().count
    }

    func getImages() -> [UIImage] {
        presenter.getImages()
    }
}

extension ImagesCollectionViewAdapter: UICollectionViewDelegate, UICollectionViewDataSource {
    // MARK: - Collection view data source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        getImages().count
    }

    // swiftlint:disable line_length
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        setupImagesCollectionViewCell(collectionView: collectionView, indexPath: indexPath)
    }

    private func setupImagesCollectionViewCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = ImagesCollectionViewCell.nameOfClass
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        if let cell = cell as? ImagesCollectionViewCell {
            let image = getImages()[indexPath.row]
            cell.setup(from: image)
            return cell
        }
        return UICollectionViewCell()
    }
}

extension ImagesCollectionViewAdapter: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      let itemSize = (collectionView.frame.width -
                     (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
      return CGSize(width: itemSize, height: itemSize)
    }
}

extension ImagesCollectionViewAdapter: GalleryLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let image = getImages()[indexPath.item]
        let aspectRatio = image.size.height / image.size.width
        let calculatedHeight = image.size.height * aspectRatio
        return calculatedHeight
    }
}
