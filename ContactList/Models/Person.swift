//
//  Person.swift
//  ContactList
//
//  Created by Антон Баландин on 14.12.23.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let telephone: String
    let email: String
    
    static func getPerson() -> [Person]{
        var contacts:[Person] = []
        let dataStore = DataStore()
        
        let mixedNames = Array(Set(dataStore.names))
        let mixedSurnames = Array(Set(dataStore.surnames))
        let mixedTelephones = Array(Set(dataStore.telephones))
        let mixedEmails = Array(Set(dataStore.emails))
        
        if !dataStore.names.isEmpty {
            for (index, _) in mixedNames.enumerated() {
                if mixedSurnames.count > index && mixedEmails.count > index && mixedTelephones.count > index { // если в массивах разное количество элементов, то число элементов итогового массива будет равно минимальному
                    
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
