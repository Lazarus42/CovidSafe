//
//  LogorSignUpScreen.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 3/25/21.
//

import SwiftUI

struct LogorSignUpScreen: View {
    var height = UIScreen.main.bounds.height
    var body: some View {
        
    NavigationView {
        //VStack vertically organizes the view
        VStack(alignment: .center, spacing: height/15) {
            //Send to Log In page
            NavigationLink(destination: LogIn()) {
                Text("Log In")
                    }
            //Send to Sign Up page
            NavigationLink(destination: SignUp()) {
                Text("Sign up")
                    }
                }
        
        }.padding(.bottom, height/4)
        
    }
    
}

struct LogorSignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        LogorSignUpScreen()
    }
}
