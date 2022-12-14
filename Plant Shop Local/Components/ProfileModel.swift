//
//  ProfileModel.swift
//  shop
//
//  Created by Benji Loya on 26/11/2022.
//

import SwiftUI
  
struct ProfileModel: View {
    
    @State var ProfileSheet: Bool = false
    @ObservedObject var userInfo = UserInfo()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(maxWidth: .infinity)
                .frame(height: 90)
                .foregroundColor(.black.opacity(0.3))
            
            HStack {
                Text("\(userInfo.textFieldUsername)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .shadow(color: .black, radius: 1)
                
                
                
                Spacer()
                
                Image("avatar1")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(40)
                    .frame(width: 82, height: 82)
                    .background(Color.gray)
                    .cornerRadius(41)
            }
            .padding()
        }
        .onTapGesture {
            ProfileSheet.toggle()
        }
        .sheet(isPresented: $ProfileSheet, content: { EditProfileScreen()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
        })
       
    }
}


struct ProfileModel_Previews: PreviewProvider {
    static var previews: some View {
        ProfileModel()
    }
}

// MARK: Version 1 -

// MARK: EDIT PROFILE SHEET
import PhotosUI
import SwiftUI

struct EditProfileScreen: View {
    
    //     avatar
    @State var selectedItem: PhotosPickerItem?
    @State var selectedImage: Image?
    
    
    //     profile info
    @ObservedObject var userInfo = UserInfo()
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                VStack {
                    VStack{
                        if let selectedImage {
                            selectedImage
                                .resizable()
                                .foregroundColor(.gray.opacity(0.6))
                                .frame(width: 90, height: 90)
                                .cornerRadius(45)
                        } else {
                            Image(systemName: "person.circle")
                                .resizable()
                                .foregroundColor(.gray.opacity(0.6))
                                .frame(width: 90, height: 90)
                                .cornerRadius(45)
                            
                        }
                        
                        PhotosPicker(selection: $selectedItem,
                                     matching: .any(of: [.images, .not(.videos)])) {
                            Text("Change profile photo")
                                .foregroundColor(.blue)
                        }
                                     .onChange(of: selectedItem) { newValue in
                                         Task {
                                             if let imageData = try?
                                                    await
                                                    newValue?
                                                .loadTransferable(type: Data.self),
                                                let image = UIImage(data: imageData) {
                                                 selectedImage = Image(uiImage: image)
                                             }
                                         }
                                     }
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        HStack{
                            VStack(alignment: .leading, spacing: 40) {
                                Text("Name:")
                                Text("Username:")
                                Text("Phone:")
                                Text("Adress:")
                            }
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .padding(.horizontal)
                            
                            VStack(alignment: .leading, spacing: 20){
                                TextField("Name", text: $userInfo.textFieldName)
                                
                                Divider()
                                
                                TextField("Username", text: $userInfo.textFieldUsername)
                                
                                Divider()
                                
                                TextField("Phone", text: $userInfo.textFieldPhone)
                                
                                Divider()
                                
                                TextField("Adress", text: $userInfo.textFieldAdress)
                            }
                            .font(.subheadline)
                            .fontWeight(.light)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.01).cornerRadius(10))
                            
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.top, 20)
                .navigationTitle("Edit profile")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Button("Cancel") {
                            presentationMode.wrappedValue.dismiss()
                        }
                    
                    
                    ,
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Done")
                                .foregroundColor(.blue)
                        })
                )
            }
        }
    }
}

// MARK: Version 2 -
/*
 
 import SwiftUI

 struct ProfileModel: View {

     @State var ProfileSheet: Bool = false
     
     var body: some View {
         ZStack {
             RoundedRectangle(cornerRadius: 10)
                 .frame(maxWidth: .infinity)
                 .frame(height: 90)
                 .foregroundColor(.black.opacity(0.3))
             
             HStack {
                 Text("Benji Loya\(user.username)")
                     .font(.title)
                     .fontWeight(.bold)
                     .foregroundColor(Color.white)
                     .shadow(color: .black, radius: 1)
                 
                 
                 
                 Spacer()
                 
                 Image("avatar1")
                     .resizable()
                     .frame(width: 80, height: 80)
                     .cornerRadius(40)
                     .frame(width: 82, height: 82)
                     .background(Color.gray)
                     .cornerRadius(41)
             }
             .padding()
         }
         .onTapGesture {
             ProfileSheet.toggle()
         }
         .sheet(isPresented: $ProfileSheet, content: { EditProfileScreen()
                 .presentationDetents([.medium, .large])
                 .presentationDragIndicator(.hidden)
         })
        
     }
 }


 struct ProfileModel_Previews: PreviewProvider {
     static var previews: some View {
         ProfileModel()
     }
 }

 
 
 
// MARK: EDIT PROFILE SHEET
import PhotosUI
import SwiftUI

struct EditProfileScreen: View {
    
    //     avatar
    @State var selectedItem: PhotosPickerItem?
    @State var selectedImage: Image?
    
    //     profile info
    @State var textFieldName: String = ""
    @State var textFieldUsername: String = ""
    @State var textFieldPhone: String = ""
    @State var textFieldAdress: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                VStack {
                    VStack{
                        if let selectedImage {
                            selectedImage
                                .resizable()
                                .foregroundColor(.gray.opacity(0.6))
                                .frame(width: 90, height: 90)
                                .cornerRadius(45)
                        } else {
                            Image(systemName: "person.circle")
                                .resizable()
                                .foregroundColor(.gray.opacity(0.6))
                                .frame(width: 90, height: 90)
                                .cornerRadius(45)
                            
                        }
                        
                        PhotosPicker(selection: $selectedItem,
                                     matching: .any(of: [.images, .not(.videos)])) {
                            Text("Change profile photo")
                                .foregroundColor(.blue)
                        }
                                     .onChange(of: selectedItem) { newValue in
                                         Task {
                                             if let imageData = try?
                                                    await
                                                    newValue?
                                                .loadTransferable(type: Data.self),
                                                let image = UIImage(data: imageData) {
                                                 selectedImage = Image(uiImage: image)
                                             }
                                         }
                                     }
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        HStack{
                            VStack(alignment: .leading, spacing: 40) {
                                Text("Name:")
                                Text("Username:")
                                Text("Phone:")
                                Text("Adress:")
                            }
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .padding(.horizontal)
                            
                            VStack(alignment: .leading, spacing: 20){
                                TextField("Name", text: $textFieldName)
                                
                                Divider()
                                
                                TextField("Username", text: $textFieldUsername)
                                
                                Divider()
                                
                                TextField("Phone", text: $textFieldPhone)
                                
                                Divider()
                                
                                TextField("Adress", text: $textFieldAdress)
                            }
                            .font(.subheadline)
                            .fontWeight(.light)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.01).cornerRadius(10))
                            
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.top, 20)
                .navigationTitle("Edit profile")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Button("Cancel") {
                            presentationMode.wrappedValue.dismiss()
                        }
                    
                    
                    ,
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Done")
                                .foregroundColor(.blue)
                        })
                )
            }
        }
    }
}
*/
