//
//  ShopText.swift
//  Plant Shop Local
//
//  Created by Benji Loya on 15/12/2022.
//

import SwiftUI

struct ShopText: View {
    
    @State var showMap: Bool = false
    
    var body: some View {
            HStack {
                Image(systemName: "map")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2, x: 1, y: 1)
                    .padding(.horizontal)
                
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
        .padding(.horizontal, 5)
        .onTapGesture {
            showMap.toggle()
        }
        .fullScreenCover(isPresented: $showMap, content: { MapView()
        })
    }
}

struct ShopText_Previews: PreviewProvider {
    static var previews: some View {
        ShopText()
    }
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

