//
//  HomeTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import SwiftUI
import Foundation
struct HomeTabView: View {
    @State private var selectTab: String = "Home"
    var body: some View {
        // Header Section
        customProfileHeader(image: "bagboy1", name: "Hi, So Chetra", subtitle: "Let's go shopping", icon1: "magnifyingglass", icon2: "bell")
        // Select menu Section
        HStack(spacing: 100){
            Button(action: {
                selectTab = "Home"
            }){
                Text("Home")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(selectTab == "Home" ? .blue : .black)
            }
            Button(action: {
                selectTab = "Category"
            }){
                Text("Category")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(selectTab == "Category" ? .blue : .black)
            }
        }
        .padding(.top)
        ZStack(alignment: .bottom){
            Divider()
            HStack {
                if selectTab == "Home" {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 2)
                        .padding(.horizontal,65)
                        Spacer()
                } else {
                    Spacer()
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 2)
                        .padding(.horizontal,75)
                    }
            }
            .animation(.easeInOut(duration: 0.3), value: selectTab)
        }
        if selectTab == "Home"{
            ScrollView{
                HomeContentView()
            }
        }else {
            CategoryContentView()
        }
    }
}
