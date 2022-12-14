//
//  ContentView.swift
//  Plant Shop Local
//
//  Created by Benji Loya on 14/12/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("logo_status") var logStatus: Bool = false
    var body: some View {
//        MARK: Redirecting User Based on Log Status
        if logStatus {
            HomeView()
        }else{
            LoginView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
