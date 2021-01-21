//
//  PlacesList.new.swift
//  SOS-Test
//
//  Created by Francesco Facca on 20/01/2021.
//

import SwiftUI

struct PlacesList: View {
    @ObservedObject private var placesManager = PlacesManager()
    
    var body: some View {
        NavigationView {
            List(placesManager.places, id: \.place.placeID) { placeLikelihood in
                PlaceRow(place: placeLikelihood.place)
            }
            .navigationBarTitle("Nearby Locations")
        }
    }
}
