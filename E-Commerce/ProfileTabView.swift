//
//  ProfileTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import Foundation
import SwiftUI

struct ProfileTabView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    var body: some View {
        VStack{
            ZStack {
                Text("My Profile")
                    .font(.headline)
                    .fontWeight(.semibold)
                HStack {
                    Spacer()
                    Image(systemName: "gearshape")
                        .font(.title3)
                        .padding(.trailing)
                }
            }
            Divider()
            ScrollView{
                Group{
                    Image("bagboy1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                }
                .frame(height: 180)
                
                Group{
                    VStack(alignment: .leading,spacing: 25){
                        Text("Username")
                            .font(.system(size: 22, weight: .semibold))
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(Color(.systemGray2))
                                .font(.system(size: 22))
                                .padding(.trailing, 20)
                            TextField("Create your username", text: $username)
                                .font(.system(size: 16))
                                .foregroundColor(Color(.systemGray))
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(15)
                    // Email Field

                        Text("Email or Phone Number")
                            .font(.system(size: 22, weight: .semibold))
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(Color(.systemGray2))
                                .font(.system(size: 22))
                                .padding(.trailing, 20)
                            TextField("Enter your email or phone number", text: $email)
                                .font(.system(size: 16))
                                .foregroundColor(Color(.systemGray))
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(15)
                    
                    
                        Text("Account Linked With")
                            .font(.system(size: 22, weight: .semibold))
                        VStack{
                            // google button
                            Button(action: {
                                
                            }){
                                customBtnLogin(image: "google", text: "SignUp with google")
                            }
                            // facebook button
                            Button(action: {
                                
                            }){
                                customBtnLogin(image: "facebook", text: "SignUp with facebook")
                            }
                        }
                    }
                }
                .padding(.horizontal,10)
            }
        }
    }
}
