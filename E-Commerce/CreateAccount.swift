//
//  CreateAccount.swift
//  E-Commerce
//
//  Created by So Chetra on 25/8/25.
//

import SwiftUI
import Foundation

public struct CreateAccount: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var isOpen: Bool = false

    public var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Title and description
                VStack(alignment: .leading, spacing: 4) {
                    customTextTitle(text: "Create Account")
                    customDescription(description: "Start learning with create account")
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                // Username Field
                VStack(alignment: .leading, spacing: 15) {
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
                }

                // Email Field
                VStack(alignment: .leading, spacing: 15) {
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
                }

                // Password Field
                VStack(alignment: .leading, spacing: 15) {
                    Text("Password")
                        .font(.system(size: 22, weight: .semibold))
                    HStack {
                        Image(systemName: "exclamationmark.lock")
                            .foregroundColor(Color(.systemGray2))
                            .font(.system(size: 22))
                            .padding(.trailing, 20)
                        if isOpen {
                            TextField("Create your password", text: $password)
                                .font(.system(size: 16))
                                .foregroundColor(Color(.systemGray))
                        } else {
                            SecureField("Create your password", text: $password)
                                .font(.system(size: 16))
                                .foregroundColor(Color(.systemGray))
                        }
                        Spacer()
                        Button(action: {
                            isOpen.toggle()
                        }) {
                            Image(systemName: isOpen ? "eye.slash.circle" : "eye.circle")
                                .foregroundColor(Color(.systemGray2))
                                .font(.system(size: 22))
                        }
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
                }

                // Submit Button
                NavigationLink {
                    MainTabView()
                } label: {
                    customBtn(text: "Create Account") {}
                }
                Text("Or using other method")
                    .foregroundStyle(Color(.systemGray))
                
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
            .padding()
        }
        .navigationBarBackButtonHidden(true)
        .scrollDismissesKeyboard(.interactively)
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

