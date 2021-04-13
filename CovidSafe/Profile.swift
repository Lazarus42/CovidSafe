//
//  Profile.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 3/24/21.
//
//This file contains the information for a user profile for the application

import Foundation
import SwiftUI

struct Profile {
    var username: String
    var password: String
    var firstName: String
    var lastName: String
    var birthday: String
    var phoneNumber: String
    var age: Int
    
    static let `default` = Profile(username: "g_kumar", password: "A", firstName: "Garry",
                                   lastName: "Kumar", birthday: "05/18/2000",
                                   phoneNumber: "7024035752", age: 20)
    
}
