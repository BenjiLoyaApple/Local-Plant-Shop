//
//  MainView.swift
//  TheFirstSM
//
//  Created by Benji Loya on 15/12/2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
//        MARK: TabView with recent post's and profile tabs
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)

            Text("Favorites view")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
                .tag(1)
            
            Text("Chat view")
                .tabItem {
                    Image(systemName: "message")
                    Text("Messages")
                }
                .tag(2)
        
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(0)
        }
//        Canging Tab Lable Tint To Black
        .tint(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
