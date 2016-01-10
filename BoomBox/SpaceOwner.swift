//
//  SpaceOwner.swift
//  BoomBox
//
//  Created by Matthew McClure on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import Foundation

class SpaceOwner: NSObject {
    //
    var firstName: String
    var lastName: String
    var email: String
    
    init(firstName: String, lastName: String, email: String) {
        self.firstName = firstName
        self.lastName  = lastName
        self.email     = email
    }
}