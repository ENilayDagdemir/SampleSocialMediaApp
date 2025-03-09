//
//  ConversationsTableViewAdapter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class ConversationsTableViewAdapter: NSObject {
    private let presenter: IConversationsPresenter

    init(presenter: IConversationsPresenter) {
        self.presenter = presenter
    }
}

extension ConversationsTableViewAdapter {
    func itemCount() -> Int {
        getConversations().count
    }

    func getConversations() -> [Conversation] {
        presenter.getConversations()
    }
}

extension ConversationsTableViewAdapter: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupConversationTableViewCell(tableView: tableView, indexPath: indexPath)
    }

    private func setupConversationTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = ConversationTableViewCell.nameOfClass
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? ConversationTableViewCell {
            cell.setup(from: getConversations()[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.conversationPressed(with: getConversations()[indexPath.row])
    }
}
