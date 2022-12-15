//
//  ShopApp.swift
//  shop
//
//  Created by Benji Loya on 19/10/2022.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                    .blurredSheet(.init(.ultraThinMaterial), show: $showSheet) {
                    }content: {
                        DetailView(product: product)
                            .presentationDetents([.large, .medium])
                    }
                    .onTapGesture {
                        showSheet.toggle()
                    }
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, height: 50, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
//            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.7))
                    .cornerRadius(30)
                    .padding()
            }
            .padding(.top, 190.0)
            
        }
//         Context Menu
        
        .contextMenu{
            Button {
                
            } label: {
                Label("Share post", systemImage: "square.and.arrow.up")
            }
            
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Label("Add to cart", systemImage: "cart")
            }
            
            Button {
                
            } label: {
                Label("Favorite", systemImage: "heart")
            }
            
        } preview: {
            Image(product.image)
            
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
    }
}

struct DetailView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ScrollView {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                        .ignoresSafeArea(.all)
                }
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Stars(product: product)
                    
                    
                    
                    Text("Plants are predominantly photosynthetic eukaryotes of the kingdom Plantae. Historically, the plant kingdom encompassed all living things that were not animals, and included algae and fungi; however, all current definitions of Plantae exclude the fungi and some algae, as well as the prokaryotes (the archaea and bacteria).")
                        .padding(.top, 15)
                }
                .padding(.horizontal)
                
                Spacer(minLength: 50)
                
                HStack {
                    Spacer()
                    
                    Text("\(product.price)$")
                        .font(.title)
                        .padding(.horizontal)
                    
                    
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    
                    Button {
                        cartManager.addToCart(product: product)
                    } label: {
                        Image(systemName: "cart")
                            .font(.title)
                            .frame(width: 100, height: 50)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(15)
                    }
                }
                .padding(.horizontal, 30)
            }
        }
    }



