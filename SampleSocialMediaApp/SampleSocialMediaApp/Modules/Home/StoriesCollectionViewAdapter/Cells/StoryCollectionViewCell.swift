//
//  StoryCollectionViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet private weak var previewImageView: UIImageView!

    func setup(from story: Story) {
        previewImageView.image = story.previewImage
        previewImageView.borderColor = .tealBlue
    }

    func removeImageBorders() {
        previewImageView.borderColor = .clear
    }
}
