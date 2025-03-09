//
//  PostTableViewCell.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var postImageView: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblPostTime: UILabel!
    @IBOutlet private weak var lblLikeCount: UILabel!
    @IBOutlet private weak var lblCommentCount: UILabel!
    @IBOutlet private weak var lblBookmarkCount: UILabel!

    func setup(from post: Post) {
        profileImageView.image = post.profileImage
        postImageView.image = post.postImage
        lblName.text = post.name
        lblPostTime.text = post.postTime
        lblLikeCount.text = post.likeCount
        lblCommentCount.text = post.commentCount
        lblBookmarkCount.text = post.bookmarkCount
    }
}
