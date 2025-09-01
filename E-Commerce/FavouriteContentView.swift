//
//  FavouriteContentView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//
import Foundation
import SwiftUI
enum FilterData: String,CaseIterable {
    case all = "All"
    case latest = "Latest"
    case mostPopular = "Most Popular"
    case lastWeek = "Last Week"
    case lastMonth = "Last Month"
}
struct FavouriteContentView: View {
    @State private var isSelected: FilterData = .all
    let cardData = CardData(image: ["bag","bag3","bag4", "watchTissot","Dior","watchWoman"], icon: "heart", title: "The Mirac Jiz",description: "Lisa Robber", price: "$195.00")
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(FilterData.allCases, id: \.self) { filter in
                    Button(action: {
                        isSelected = filter
                    }) {
                        Text(filter.rawValue)
                            .font(.subheadline)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 20)
                            .foregroundColor(isSelected == filter ? .white : Color(.systemGray))
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(isSelected == filter ? Color.blue : Color.white)
                                    .overlay(
                                        isSelected == filter ? RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.blue), lineWidth: 1) : RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray2), lineWidth: 1)
                                    )
                            )
                    }
                }
            }
        }
        .padding()
        ScrollView{
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]){
                ForEach(0..<cardData.image.count) {index in
                    CustomCardView(image: cardData.image[index], icon: cardData.icon, title: cardData.title, subtitle: cardData.description, price: cardData.price)
                }
            }
        }
    }
}
