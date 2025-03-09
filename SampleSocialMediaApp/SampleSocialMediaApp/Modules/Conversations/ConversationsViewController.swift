//
//  ConversationsViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class ConversationsViewController: UIViewController, StoryboardLoadable {

    // MARK: - IBOutlets
    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var conversationsTableView: UITableView!

    // MARK: - Properties
    var presenter: IConversationsPresenter?
    var tableViewAdapter: ConversationsTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        resetNavigationBar()
    }

    @objc private func onMenuButtonPressed() {
        // will not be implemented for this case
    }
}

extension ConversationsViewController: IConversationsView {
    func addMenuButton() {
        guard let menuIcon = UIImage(named: ConversationConstants.menuIconName) else { return }
        let menuButton = UIBarButtonItem(image: menuIcon,
                                           style: .plain,
                                           target: self,
                                           action: #selector(onMenuButtonPressed))
        menuButton.tintColor = .black
        navigationItem.rightBarButtonItem = menuButton
    }

    func prepareSearchBar() {
        searchBar.setImage(UIImage(named: ConversationConstants.searchBarIconName),
                           for: .search,
                           state: .normal)
        searchBar.searchTextField.attributedPlaceholder = ConversationConstants.searchBarPlaceholderAttributedString
        searchBar.searchTextField.backgroundColor = .white
        searchBar.backgroundImage = UIImage()
    }

    func setupTableView() {
        conversationsTableView.delegate = tableViewAdapter
        conversationsTableView.dataSource = tableViewAdapter
        conversationsTableView.registerCell(ConversationTableViewCell.self)
    }

    func reloadTableView() {
        conversationsTableView.reloadData()
    }
}
