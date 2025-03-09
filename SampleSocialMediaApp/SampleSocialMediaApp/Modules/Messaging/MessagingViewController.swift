//
//  MessagingViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 29.01.2022.
//  
//

import UIKit

class MessagingViewController: UIViewController, StoryboardLoadable {
    // MARK: - IBOutlets
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblStatus: UILabel!
    @IBOutlet private weak var messagingTableView: UITableView!

    // MARK: - Properties
    var presenter: IMessagingPresenter?
    var tableViewAdapter: MessagingTableViewAdapter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        resetNavigationBar()
    }
}

extension MessagingViewController: IMessagingView {
    func setUIElements(from conversation: Conversation) {
        profileImageView.image = conversation.profileImage
        lblName.text = conversation.name
        lblStatus.text = conversation.status
    }

    func setupTableView() {
        messagingTableView.delegate = tableViewAdapter
        messagingTableView.dataSource = tableViewAdapter
        messagingTableView.registerCell(ReceivedMessageTableViewCell.self)
        messagingTableView.registerCell(SentMessageTableViewCell.self)
    }

    func reloadTableView() {
        messagingTableView.reloadData()
    }
}
