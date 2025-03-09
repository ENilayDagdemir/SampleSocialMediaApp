//
//  HomeMock.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

struct HomeMock {
    static let stories: [Story] = [Story(previewImage:
                                         UIImage(named: "add_story_button_background_image")),
                                   Story(previewImage: UIImage(named: "profile_image_1")),
                                   Story(previewImage: UIImage(named: "profile_image_2")),
                                   Story(previewImage: UIImage(named: "profile_image_3")),
                                   Story(previewImage: UIImage(named: "profile_image_4")),
                                   Story(previewImage: UIImage(named: "profile_image_5")),
                                   Story(previewImage: UIImage(named: "profile_image_9"))]
    static let posts: [Post] = [Post(profileImage: UIImage(named: "profile_image_4"),
                                     postImage: UIImage(named: "home_post_image_1"),
                                     name: "Dennis Reynolds",
                                     postTime: "2 hrs ago",
                                     likeCount: "5.2K",
                                     commentCount: "1.1K",
                                     bookmarkCount: "362"),
                                Post(profileImage: UIImage(named: "profile_image_5"),
                                     postImage: UIImage(named: "home_post_image_2"),
                                     name: "Matthew Dewis",
                                     postTime: "4 hrs ago",
                                     likeCount: "4K",
                                     commentCount: "800",
                                     bookmarkCount: "80"),
                                Post(profileImage: UIImage(named: "profile_image_8"),
                                     postImage: UIImage(named: "home_post_image_3"),
                                     name: "Malena Tudi",
                                     postTime: "1 day ago",
                                     likeCount: "1K",
                                     commentCount: "300",
                                     bookmarkCount: "25"),
                                Post(profileImage: UIImage(named: "profile_image_10"),
                                     postImage: UIImage(named: "home_post_image_4"),
                                     name: "Jakob Curtis",
                                     postTime: "1 week ago",
                                     likeCount: "850",
                                     commentCount: "150",
                                     bookmarkCount: "30")]
}
