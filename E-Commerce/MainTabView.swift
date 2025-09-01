//
//  MainTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import SwiftUI
import Foundation

struct MainTabView: View {
    var body: some View {
        TabView{
            NavigationStack{
                HomeTabView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            NavigationStack{
                OrderTabView()
            }
            .tabItem {
                Image(systemName: "truck.box.fill")
                Text("My Order")
            }
            NavigationStack{
                FavouriteTabView()
            }
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Favourite")
            }
            NavigationStack{
                ProfileTabView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("My Profile")
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

