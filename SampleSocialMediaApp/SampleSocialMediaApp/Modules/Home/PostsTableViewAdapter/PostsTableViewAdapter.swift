//
//  PostsTableViewAdapter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//

import UIKit

class PostsTableViewAdapter: NSObject {
    private let presenter: IHomePresenter

    init(presenter: IHomePresenter) {
        self.presenter = presenter
    }
}

extension PostsTableViewAdapter {
    func itemCount() -> Int {
        getPosts().count
    }

    func getPosts() -> [Post] {
        presenter.getPosts()
    }
}

extension PostsTableViewAdapter: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupPostTableViewCell(tableView: tableView, indexPath: indexPath)
    }

    private func setupPostTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = PostTableViewCell.nameOfClass
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? PostTableViewCell {
            cell.setup(from: getPosts()[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        HomeConstants.postsTableViewRowHeight
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        HomeConstants.postsTableViewRowHeight
    }
}
