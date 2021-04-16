//
//  VaccinationLocation.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/15/21.
//

import Foundation
import SwiftUI
//import CoreLocation
import MapKit

struct siteLocation: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var state: String
    var vaccAvailable: Int
    var waiting: Int
    //Setting up the coordinate struct
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    //Using CoreLocation to interpret coordinates so we can use
    //google maps and MapKit easily
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
