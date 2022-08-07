//
//  StartViewController.swift
//  ContactList_UIkit
//
//  Created by Konstantin Kirillov on 02.08.2022.
//

import UIKit

class StartViewController: UITabBarController {

    private var mockContacts = Contact.getMockContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else { return }
        viewControllers.forEach {
                if let destinationVC = $0 as? ContactListViewController {
                    destinationVC.mockContacts = mockContacts
                }
                if let destinationVC = $0 as? FullContactListViewController {
                    destinationVC.mockContacts = mockContacts
                }
        }
    }
}

