//
//  PlacesManager.swift
//  SOS-Test
//
//  Created by Francesco Facca on 20/01/2021.
//

import GooglePlaces

class PlacesManager: NSObject, ObservableObject {
    private var placesClient = GMSPlacesClient.shared()
    
    @Published var places = [GMSPlaceLikelihood]()
    
    override init() {
        super.init()
        currentPlacesList { (places) in
            guard let places = places else { return }
            self.places = places
        }
    }
    
    func currentPlacesList(completion: @escaping (([GMSPlaceLikelihood]?) -> Void)) {
        placesClient.currentPlace { (placeLikelyHoodList, error) in
            if let error = error {
                print("Places failed to initialize with error \(error)")
                completion(nil)
                return
            }
            
            guard let placeLikelyHoodList = placeLikelyHoodList else { return }
            self.places = placeLikelyHoodList.likelihoods
            print(self.places)
            completion(self.places)
        }
    }
}
