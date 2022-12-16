//
//  ProfileText.swift
//  Plant Shop Local
//
//  Created by Benji Loya on 15/12/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProfileText: View {
//    var user: User
    @State var showMenu: Bool = false
    
    var body: some View {
        HStack {
            
            HStack {
                Text("Benji Loya")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2, x: 1, y: 1)
                    .padding(.horizontal)
                
                Spacer()
                
//                WebImage(url: user.userProfileURL).placeholder{
                    Image("nullProfile")
//                }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .background(Color.black.opacity(0.3))
        .cornerRadius(20)
        .padding(.horizontal, 5)
        .onTapGesture {
            showMenu.toggle()
        }
        .fullScreenCover(isPresented: $showMenu, content: {
                    EditProfileView()
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                })
        }
    }

struct ProfileText_Previews: PreviewProvider {
    static var previews: some View {
        ProfileText()
    }
}





struct MenuView: View {
    
    var body: some View{
        
    Text("Hello")
        
    }
}
