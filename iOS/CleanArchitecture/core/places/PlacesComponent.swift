//
//  PlacesAssembler.swift
//  CleanArchitecture
//
//  Created by Penas Amor, Alberto on 19/4/18.
//  Copyright © 2018 Alberto. All rights reserved.
//

class PlacesComponent {
    static func assemble(apiKey:String) -> PlacesProtocol {
        let url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=\(apiKey)&radius=150&types=restaurant&location={{location}}"
        return Places(locationWorker: LocationWorker(), placesGateway: PlacesWorker(url: url))
    }
}
