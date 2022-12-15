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
                    
                    EditProfileView()
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

/*
import SwiftUI
import SDWebImageSwiftUI

struct ProfileInfo: View {
    var user: User
    @State var showEP: Bool = false
    
    var body: some View {
        HStack {
            
            Spacer()
            
            HStack(spacing: 12){
                WebImage(url: user.userProfileURL).placeholder{
                    //                        MARK: Placeholder image
                    Image("nullProfile")
                        .resizable()
                }
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                
                Text(user.username)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.horizontal, 20)
            }
            .onTapGesture {
                showEP.toggle()
//            .fullScreenCover(isPresented: $showEP, content: { EditProfileView()
//                            .presentationDetents([.medium, .large])
//                            .presentationDragIndicator(.visible)
//                    })
            }
        }
    }
}
*/
