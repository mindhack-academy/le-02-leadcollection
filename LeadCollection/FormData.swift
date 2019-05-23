//
//  FormData.swift
//  LeadCollection
//
//  Created by Emil Lenard on 21/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation

class FormData: Codable {
    var user: User?
    var technology: Int?
    var reason: String?
    var contactDate: Date?
    
    
}

class User: Codable {

    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
}

class Technology: Codable {
    var title: String?
    var uid: String?
}

