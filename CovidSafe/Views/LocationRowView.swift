//
//  LocationRowView.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/15/21.
//The purpose of this file is to generate a view of a single vaccine location
//currently using the JSON file which will change to use the database

import SwiftUI

struct LocationRowView: View {
    var site: siteLocation
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .center, spacing: height/30) {
            Text(site.name)
            HStack(spacing: width/4){
                Text("Vaccines: \(site.vaccAvailable)")
                Text("Waitlist: \(site.waiting)")
                Spacer()
            }
        }
    }
}


struct LocationRowView_Previews: PreviewProvider {
    static var previews: some View {
    LocationRowView(site: vaccLocations[0])
    }
}
