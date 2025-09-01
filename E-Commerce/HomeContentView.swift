//
//  HomeContentView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//
import Foundation
import SwiftUI

struct SliderData: Identifiable {
    var id = UUID()
    var image: [String]
}

struct CardData: Identifiable {
    var id = UUID()
    var image: [String]
    var icon: String
    var title: String
    var description: String
    var price: String
}

struct HomeContentView: View {
    let sliderData = SliderData(
        image: ["bannerPromotion1","bannerPromotion2","bannerPromotion3","bannerPromotion4"]
    )
    
    let cardData = CardData(image: ["bag","bag3","bag4"], icon: "heart", title: "The Mirac Jiz",description: "Lisa Robber", price: "$195.00")
    var body: some View {
        // Slider Section
        TabView{
            ForEach(0..<sliderData.image.count){ index in
                Image(sliderData.image[index])
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 360, height: 240)
                    .tag(0)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(height: 240)
        
        // see all section
        HStack{
            Text("New Arrivals")
                .font(.title3)
                .fontWeight(.bold)
            Spacer()
            Text("See All")
                .foregroundColor(.blue)
                .fontWeight(.medium)
        }
        .padding()
        
        // card section
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
            ForEach(0..<cardData.image.count) {index in
                CustomCardView(image: cardData.image[index], icon: cardData.icon, title: cardData.title, subtitle: cardData.description, price: cardData.price)
            }
        }
    }
}
