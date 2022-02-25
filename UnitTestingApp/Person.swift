//
//  Person.swift
//  UnitTestingApp
//
//  Created by Igor on 11.12.2021.
//

import Foundation

class Person {
    let name: String
    let surname: String
    
    var number: String? = nil
    var image: Data? = nil
    
    init(name: String,
         surname: String,
         number: String? = nil,
         image: Data? = nil) {
        self.name = name
        self.surname = surname
        self.number = number
        self.image = image
    }
}
