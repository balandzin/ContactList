//
//  Person.swift
//  ContactList
//
//  Created by Антон Баландин on 14.12.23.
//

import Foundation

struct Person {
    let name: String?
    let surname: String
    let telephone: String
    let email: String
    
    static func getPerson() -> [Person]{
        var contacts:[Person] = []
        let dataStore = DataStore()
        
        let mixedNames = dataStore.names.shuffled()
        let mixedSurnames = dataStore.surnames.shuffled()
        let mixedTelephones = dataStore.telephones.shuffled()
        let mixedEmails = dataStore.emails.shuffled()
        
        if !dataStore.names.isEmpty {
            for (index, _) in mixedNames.enumerated() {
                if mixedSurnames.count > index && mixedEmails.count > index && mixedTelephones.count > index {
                    
                    contacts.append(
                        Person(
                            name: mixedNames[index],
                            surname: mixedSurnames[index],
                            telephone: mixedTelephones[index],
                            email: mixedEmails[index]
                        )
                    )
                }
            }
        }
        return contacts
    }
}
