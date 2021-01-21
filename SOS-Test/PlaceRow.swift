//
//  PlaceRow.swift
//  SOS-Test
//
//  Created by Francesco Facca on 20/01/2021.
//

import SwiftUI
import GooglePlaces

struct PlaceRow: View {
    var place: GMSPlace
    
    var body: some View {
        HStack {
            Text(place.name ?? "")
                .foregroundColor(.white)
            Spacer()
        }
    }
}
