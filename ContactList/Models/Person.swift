//
//  Person.swift
//  ContactList
//
//  Created by Антон Баландин on 14.12.23.
//

struct Person {
    let name: String
    let surname: String
    let telephone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person]{
        var contacts:[Person] = []
        let dataStore = DataStore()
        
        let names = Array(Set(dataStore.names))
        let surnames = Array(Set(dataStore.surnames))
        let telephones = Array(Set(dataStore.telephones))
        let emails = Array(Set(dataStore.emails))
        
        if !dataStore.names.isEmpty {
            for (index, _) in names.enumerated() {
                if surnames.count > index && emails.count > index && telephones.count > index { // если в массивах разное количество элементов, то число элементов итогового массива будет равно минимальному
                    
                    contacts.append(
                        Person(
                            name: names[index],
                            surname: surnames[index],
                            telephone: telephones[index],
                            email: emails[index]
                        )
                    )
                }
            }
        }
        return contacts
    }
}
