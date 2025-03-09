//
//  HomeViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class HomeViewController: UIViewController, StoryboardLoadable {

    // MARK: - IBOutlets
    @IBOutlet private weak var storiesCollectionView: UICollectionView!
    @IBOutlet private weak var postsTableView: UITableView!

    // MARK: - Properties
    var presenter: IHomePresenter?
    var tableViewAdapter: PostsTableViewAdapter?
    var collectionViewAdapter: StoriesCollectionViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction private func onConversationsButtonPressed() {
        presenter?.onConversationsButtonPressed()
    }
}

extension HomeViewController: IHomeView {
    func setupCollectionView() {
        storiesCollectionView.delegate = collectionViewAdapter
        storiesCollectionView.dataSource = collectionViewAdapter
        storiesCollectionView.registerCell(StoryCollectionViewCell.self)
    }

    func setupTableView() {
        postsTableView.delegate = tableViewAdapter
        postsTableView.dataSource = tableViewAdapter
        postsTableView.registerCell(PostTableViewCell.self)
    }

    func reloadTableView() {
        postsTableView.reloadData()
    }

    func reloadCollectionView() {
        storiesCollectionView.reloadData()
    }
}
