//
//  SOS_TestApp.swift
//  SOS-Test
//
//  Created by Joshua Retallick on 20/01/2021.
//

import SwiftUI
import GoogleMaps
import GooglePlaces

@main
struct SOS_TestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        GMSServices.provideAPIKey("AIzaSyBZ6vEoArw4zfEq5kAPnd-hH2_W5szErPE")
        GMSPlacesClient.provideAPIKey("AIzaSyBZ6vEoArw4zfEq5kAPnd-hH2_W5szErPE")
        return true
    }
}
