//
//  FullContactListViewController.swift
//  ContactList_UIkit
//
//  Created by Konstantin Kirillov on 02.08.2022.
//

import UIKit

class FullContactListViewController: UITableViewController {
    
    var mockContacts: [Contact]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        mockContacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        mockContacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .lightGray
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContactCell", for: indexPath)
        var contentCell = cell.defaultContentConfiguration()
        
        let contactInstance = mockContacts[indexPath.section]
        
        if indexPath.row == 0 {
            contentCell.text = contactInstance.phone
            contentCell.image = UIImage(systemName: "phone")
        } else {
            contentCell.text = contactInstance.email
            contentCell.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = contentCell
        return cell
    }
}
