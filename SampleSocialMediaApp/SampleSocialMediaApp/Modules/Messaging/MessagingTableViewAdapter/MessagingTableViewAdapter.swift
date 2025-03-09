//
//  MessagingTableViewAdapter.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 30.01.2022.
//

import UIKit

class MessagingTableViewAdapter: NSObject {
    private let presenter: IMessagingPresenter

    init(presenter: IMessagingPresenter) {
        self.presenter = presenter
    }
}

extension MessagingTableViewAdapter {
    func itemCount() -> Int {
        getMessages().count
    }

    func getMessages() -> [MessageDetails] {
        presenter.getMessages()
    }
}

extension MessagingTableViewAdapter: UITableViewDelegate, UITableViewDataSource {

    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemCount()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch getMessages()[indexPath.row].type {
        case .received:
            return setupReceivedMessageTableViewCell(tableView: tableView, indexPath: indexPath)
        case .sent:
            return setupSentMessageTableViewCell(tableView: tableView, indexPath: indexPath)
        }
    }

    private func setupReceivedMessageTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = ReceivedMessageTableViewCell.nameOfClass
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? ReceivedMessageTableViewCell {
            cell.setup(from: getMessages()[indexPath.row].message)
            return cell
        }
        return UITableViewCell()
    }

    private func setupSentMessageTableViewCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let identifier = SentMessageTableViewCell.nameOfClass
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        if let cell = cell as? SentMessageTableViewCell {
            cell.setup(from: getMessages()[indexPath.row].message)
            return cell
        }
        return UITableViewCell()
    }
}
