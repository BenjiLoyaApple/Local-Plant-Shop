//
//  HomeView.swift
//  shop
//
//  Created by Benji Loya on 26/11/2022.
//

import SwiftUI


struct HomeView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            Home1View()
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
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Home1View: View {
    
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Plant Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
