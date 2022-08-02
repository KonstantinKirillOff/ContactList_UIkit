//
//  PersonalInfoViewController.swift
//  ContactList_UIkit
//
//  Created by Konstantin Kirillov on 02.08.2022.
//

import UIKit

class PersonalInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
        
        title = contact.fullName
    }
}
