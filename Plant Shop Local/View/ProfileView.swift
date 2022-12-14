//
//  WelcomeScreenView.swift
//  PlantPortfolio
//
//  Created by Benji Loya on 04/10/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
       
            ZStack {
                
                Image("big-pic")
                    .resizable()
                    .overlay(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.7), .black.opacity(0.4)]), startPoint: .top, endPoint: .bottom))
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .leading) {
                    
                   Text("Profile")
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    ShopText()
                        .padding(.bottom, 100)
                    
                }
                .padding(.vertical)
                .padding(.horizontal)
            
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}



struct ShopText: View {
    
    @State var mapSheet: Bool = false
    
    var body: some View {
            HStack {
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Plant Shop")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                    
                    Text("Makes Your")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                    
                    Text("House Greener")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                    
                    Text("Decorate your house to make \nit look greener")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.8))
                        .shadow(color: .black, radius: 2, x: 1, y: 1)
                        .padding(.vertical, 1)
                }
                .padding(.horizontal, 20)
        }
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.3))
        .cornerRadius(20)
        .onTapGesture {
            mapSheet.toggle()
        }
        .sheet(isPresented: $mapSheet, content: { MapSheetView()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        })
    }
}


struct MapSheetView: View {
    var body: some View {
       
            Text("Shops on the map")
          
    }
}
