//
//  LogIn.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 3/25/21.
//

import SwiftUI
import UIKit

struct LogIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var height = UIScreen.main.bounds.height
    var body: some View {
        VStack (alignment: .center, spacing: height/20) {
            Text("Enter your info below to log in!")
            //Username text field
            TextField("Username", text: $username).disableAutocorrection(false)
            //Password text field
            SecureField("Password", text: $password)
            .disableAutocorrection(true)
            Text(username)
            Text(password)
        }.multilineTextAlignment(.center)
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LogIn()
            LogIn()
        }
    }
}
