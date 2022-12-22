//
//  ReusableProfileContent.swift
//  TheFirstSM
//
//  Created by Benji Loya on 15/12/2022.
//

import SwiftUI
import SDWebImageSwiftUI


struct ReusableProfileContent: View {
    var user: User
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack{
                HStack(spacing: 15){
                    WebImage(url: user.userProfileURL).placeholder{
//                        MARK: Placeholder image
                        Image("nullProfile")
                            .resizable()
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(user.username)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text(user.userAdress)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                        
//                        MARK: Displaying Bio Link, if given while signing up profile page
                        if let bioLink = URL(string: user.userBioLink){
                            Link(user.userBioLink, destination: bioLink)
                                .font(.callout)
                                .tint(.blue)
                                .lineLimit(1)
                        }
                    }
                    .hAlign(.leading)
                }
                .padding(.horizontal)
                
                Text("Post's")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .hAlign(.leading)
                    .padding(.vertical, 15)
                    .padding(.horizontal)
            }
        }
    }
}
