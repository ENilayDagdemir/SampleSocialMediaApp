//
//  StoriesCollectionViewAdapter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

class StoriesCollectionViewAdapter: NSObject {
    private let presenter: IHomePresenter

    init(presenter: IHomePresenter) {
        self.presenter = presenter
    }
}

extension StoriesCollectionViewAdapter {
    func itemCount() -> Int {
        getStories().count
    }

    func getStories() -> [Story] {
        presenter.getStories()
    }
}

extension StoriesCollectionViewAdapter: UICollectionViewDelegate, UICollectionViewDataSource {
    // MARK: - Collection view data source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        getStories().count
    }

    // swiftlint:disable line_length
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        setupStoriesCollectionViewCell(collectionView: collectionView, indexPath: indexPath)
    }

    private func setupStoriesCollectionViewCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = StoryCollectionViewCell.nameOfClass
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        if let cell = cell as? StoryCollectionViewCell {
            let story = getStories()[indexPath.row]
            cell.setup(from: story)
            if story.previewImage == getStories()[0].previewImage {
                cell.removeImageBorders()
            }
            return cell
        }
        return UICollectionViewCell()
    }
}

extension StoriesCollectionViewAdapter: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
