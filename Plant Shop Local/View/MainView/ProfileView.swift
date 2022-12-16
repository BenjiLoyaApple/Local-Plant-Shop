//
//  WelcomeScreenView.swift
//  Plant
//
//  Created by Benji Loya on 04/10/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        ZStack {
            Image("big-pic")
                .resizable()
                .overlay(LinearGradient(gradient: Gradient(colors: [.white.opacity(0.5), .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom))
                .ignoresSafeArea(.all)
            
            VStack {
                ProfileText()
                        .padding(.top, 30)
                    
                    Spacer()
                    
                    ShopText()
                        .padding(.bottom, 100)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
