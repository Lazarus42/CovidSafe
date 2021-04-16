//
//  ModelData.swift
//  CovidSafe
//
//  Created by Spencer Gibson on 4/15/21.
// This file is intended to load a vaccination location given its name and some information about it
//This file will help to setup the UI and to see what the database should store when we get to that point

import Foundation

var vaccLocations: [siteLocation]  = load("locationsInfo.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    if let path = Bundle.main.url(forResource: filename, withExtension: nil) {
        //If the file was found
        do {
            data = try Data(contentsOf: path)
        }
        //Unable to open the file
        catch {
            fatalError("Unable to open the contents of the file")
        }
        //Successfully opened now we try to get information from the file
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
        //We were unable to interpret the file
        catch {
            fatalError("Error decoding the JSON file")
        }
    }
    //If the file was not found
    else {
        fatalError("File not found")
    }
}
