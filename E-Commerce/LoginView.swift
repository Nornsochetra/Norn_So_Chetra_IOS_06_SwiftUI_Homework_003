//
//  LoginView.swift
//  E-Commerce
//
//  Created by So Chetra on 21/8/25.
//
import Foundation
import SwiftUI

struct loginViewData: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let image: [String]
}

public struct LoginView: View {
    let loginData = loginViewData(
        title: "Various Collections Of The Latest Products",
        description: "Urna amet, suspendisse nec, viverra vel, dapibus ac, nibh. Integer in malesuada nunc. Nulla facilisi.",
        image: ["watch","watchTissot","watchWoman"]
    )
    public var body: some View {
        NavigationStack{
            VStack{
                TabView{
                    ForEach(0..<loginData.image.count, id: \.self){ index in
                        VStack(spacing: 20){
                            Image(loginData.image[index])
                                .resizable()
                                .cornerRadius(20)
                                .frame(width: 360, height: 360)
                            customTextTitle(text: loginData.title)
                            customDescription(description: loginData.description)
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .automatic))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .frame(height: 690)
                .padding(.top,-50)
                VStack{
                    NavigationLink {
                        CreateAccount()
                    } label: {
                        customBtn(text: "Create Account") {}
                    }
                    Text("Already have an Account")
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
    }
}
