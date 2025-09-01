//
//  CategoryContentView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//
import Foundation
import SwiftUI

struct CategoryData: Identifiable {
    var id = UUID()
    let image: [String]
    let title: [String]
    let stock: String
}
struct CategoryContentView: View {
    let categoryData = CategoryData(image: ["zara","zara1","zara2","zarabag"], title: ["New Arrivals", "Clothes", "Bags", "Shoes", "Shirt"], stock: "250 Products")
    var body: some View {
        ScrollView{
            VStack{
                ForEach(0..<categoryData.image.count){index in
                    Image(categoryData.image[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 370, height: 190)
                        .cornerRadius(20)
                        .overlay(alignment: index % 2 == 0 ? .leading : .trailing){
                            VStack(alignment: index % 2 == 0 ? .leading : .trailing){
                                Text(categoryData.title[index])
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text(categoryData.stock)
                                    .font(.headline)
                                    .foregroundColor(.gray)
                            }
                            .padding(.horizontal,30)
                        }
                }
            }
        }
        
    }
}
