//
//  Contact.swift
//  ContactList_UIkit
//
//  Created by Konstantin Kirillov on 02.08.2022.
//

struct Contact {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getMockContacts() -> [Contact] {
       
        var mockContacts = [Contact]()
        let dataManager = DataManager.shared
        
        let mixedNames = dataManager.names.shuffled()
        let mixedLastNames = dataManager.lastNames.shuffled()
        let mixedPhones = dataManager.telephones.shuffled()
        let mixedEmails = dataManager.emails.shuffled()
        
        for i in 0..<4 {
            mockContacts.append(Contact(name: mixedNames[i], lastName: mixedLastNames[i], phone: mixedPhones[i], email: mixedEmails[i]))
        }
        
        return mockContacts
    }
}
