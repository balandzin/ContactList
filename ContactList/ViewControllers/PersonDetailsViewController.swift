//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Антон Баландин on 14.12.23.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(person.telephone)"
        emailLabel.text = "Email: \(person.email)"
        
        navigationItem.title = person.fullName
    }
}
