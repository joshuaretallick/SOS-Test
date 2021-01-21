//
//  MapView.swift
//  SOS-Test
//
//  Created by Francesco Facca on 20/01/2021.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            PlacesList()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
