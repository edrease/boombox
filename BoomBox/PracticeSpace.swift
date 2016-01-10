//
//  PracticeSpace.swift
//  BoomBox
//
//  Created by Matthew McClure on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import Foundation

class PracticeSpace: NSObject {
    
    var owner: SpaceOwner
    var title: String
    var streetAddress: String
    var city: String
    var stateAbbrev: String
    var dailyRate: Double
//    var hoursOfOpOpen: NSDate
//    var hoursOfOpClose: NSDate
    var spaceDescription: String
    
    
    init(owner: SpaceOwner, title: String, streetAddress: String, city: String, stateAbbrev: String, dailyRate: Double, /*hoursOfOpOpen:NSDate, hoursOfOpClose: NSDate,*/ spaceDescription: String){
        self.owner            = owner
        self.title            = title
        self.streetAddress    = streetAddress
        self.city             = city
        self.stateAbbrev      = stateAbbrev
        self.dailyRate        = dailyRate
//        self.hoursOfOpOpen    = hoursOfOpOpen
//        self.hoursOfOpClose   = hoursOfOpClose
        self.spaceDescription = spaceDescription
    }
}