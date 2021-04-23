//
//  LocationListViews.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/23/21.
//  @brief This file is used to create the list of
//  vaccine locations near the user.
//  The view for vaccine claiming needs to be setup.

import SwiftUI

struct LocationListViews: View {
    var body: some View {
        //  Dynamically generate the list of vaccine sites
        NavigationView {
            List(vaccLocations, id: \.id) {vaccSite in
                NavigationLink(
                    destination: vaccineClaimView()) {
                        LocationRowView(site: vaccSite)
                    }
                }
            //  Setting mode to inline makes the title smaller
            .navigationBarTitle("Vaccine Locations Nearby"
                                , displayMode: .inline)
        }
    }
}

struct LocationListViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationListViews()
            LocationListViews()
        }
    }
}
