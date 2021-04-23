//
//  LocationRowView.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/15/21.
//  @brief The purpose of this file is to generate a view of a single
//  vaccine location currently using the JSON file which will change
//  to use the database
//  Note: It looks strange here but in LocationListView, it is pushed
//  the left

import SwiftUI

struct LocationRowView: View {
    var site: siteLocation
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading, spacing: height/40) {
            VStack(alignment: .leading) {
                Text(site.name).fontWeight(.bold)
            }
            HStack(spacing: width/4){
                Text("Vaccines: \(site.vaccAvailable)")
                Text("Waitlist: \(site.waiting)")
            }
        }
    }
}


struct LocationRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationRowView(site: vaccLocations[0])
            LocationRowView(site: vaccLocations[1])
        }
    }
}
