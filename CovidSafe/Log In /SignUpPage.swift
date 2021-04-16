//
//  SignUp.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 3/25/21.
//


import SwiftUI
import UIKit

struct SignUp: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var birthday: String = ""
    @State private var phoneNumber: String = ""
    @State private var age: Int = 0
        
    var height = UIScreen.main.bounds.height
    var body: some View {
        VStack (alignment: .center, spacing: height/20){
            Text("Enter your info below to sign up!")
            TextField("Username", text: $username).disableAutocorrection(false)
            SecureField("Password", text: $password)
            .disableAutocorrection(true)
            TextField("First name", text: $firstName).disableAutocorrection(false)
            TextField("Last name", text: $lastName).disableAutocorrection(false)
            TextField("Birthday", text: $birthday).disableAutocorrection(false)
            TextField("Phone Number", text: $phoneNumber).disableAutocorrection(false)
        }.multilineTextAlignment(.center)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
