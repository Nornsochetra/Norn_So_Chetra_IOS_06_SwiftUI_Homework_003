//
//  FavouriteTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import SwiftUI
import Foundation
struct FavouriteTabView: View {
    var body: some View {
        VStack{
            ZStack {
                Text("My Order")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            FavouriteContentView()
        }
    }
}

