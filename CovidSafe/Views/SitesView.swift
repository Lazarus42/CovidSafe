//
//  SitesView.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/15/21.
// The point of this file is to load a list of the available
// vaccine administration sites

import SwiftUI

struct SitesView: View {
    //Stores the name of the location
    @State private var locationName: String = ""
    //Stores the number of available vaccines
    @State private var vaccines: Int = 0
    //Stores the number of people waiting for a vaccine
    @State private var waiting: Int = 0
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SitesView_Previews: PreviewProvider {
    static var previews: some View {
        SitesView()
    }
}
