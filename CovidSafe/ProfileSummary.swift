//
//  ProfileSummary.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 3/24/21.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack(spacing: 10) {
            Text(profile.username).bold()
            Text(profile.firstName)
            Text(profile.lastName)
            Text(profile.birthday)
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
