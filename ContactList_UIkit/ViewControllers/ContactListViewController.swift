//
//  ContactListViewController.swift
//  ContactList_UIkit
//
//  Created by Konstantin Kirillov on 02.08.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var mockContacts: [Contact]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockContacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personalInfo", for: indexPath)
        var contentCell = cell.defaultContentConfiguration()
        
        let contactInstance = mockContacts[indexPath.row]
        
        contentCell.text = contactInstance.fullName
        contentCell.secondaryText = contactInstance.email
        
        cell.contentConfiguration = contentCell
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personalVC = segue.destination as? PersonalInfoViewController else { return }
        guard let currentContactIndex = tableView.indexPathForSelectedRow else { return }
        let contact = mockContacts[currentContactIndex.row]
        
        personalVC.contact = contact
    }

}
