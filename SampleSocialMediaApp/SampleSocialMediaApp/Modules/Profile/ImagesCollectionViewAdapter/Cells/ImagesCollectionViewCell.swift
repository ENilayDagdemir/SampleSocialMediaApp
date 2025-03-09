//
//  ImagesCollectionViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var postImageView: UIImageView!

    override func awakeFromNib() {
      super.awakeFromNib()
      containerView.layer.cornerRadius = 19
      containerView.layer.masksToBounds = true
    }

    func setup(from photo: UIImage) {
        postImageView.image = photo
    }
}
