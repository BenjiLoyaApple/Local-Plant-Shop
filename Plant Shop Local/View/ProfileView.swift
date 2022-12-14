//
//  WelcomeScreenView.swift
//  PlantPortfolio
//
//  Created by Benji Loya on 04/10/2022.
//

import SwiftUI

struct ProfileView: View {
    
    
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
    
    @State var showMap: Bool = false
    
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
            showMap.toggle()
        }
        .fullScreenCover(isPresented: $showMap, content: { MapView()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        })
    }
}

@ViewBuilder
func HelperView()->some View {
    
    
}


import MapKit

struct MapView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var showShop: Bool = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            //            Map Region
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.240, longitude: 55.2708), latitudinalMeters: 10000, longitudinalMeters: 10000)
            Map(coordinateRegion: .constant(region))
                .ignoresSafeArea()
            
            //            Sheet Button
            
            
            HStack {
                Button {
                    showShop.toggle()
                }label: {
                    Image(systemName: "dock.rectangle")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
                
                Spacer()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .fontWeight(.semibold)
                })
            }
            .padding(15)
            .blurredSheet(.init(.ultraThinMaterial), show: $showShop) {
                
            }content: {
            Text("Hello")
                    .presentationDetents([.large, .medium, .height(50)])
            }
        }
    }
}

