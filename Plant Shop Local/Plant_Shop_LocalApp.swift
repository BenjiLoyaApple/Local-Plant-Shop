//
//  Plant_Shop_LocalApp.swift
//  Plant Shop Local
//
//  Created by Benji Loya on 14/12/2022.
//

import SwiftUI
import Firebase

@main
struct TheFirstSMApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
