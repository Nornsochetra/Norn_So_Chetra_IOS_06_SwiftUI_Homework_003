//
//  OrderContentView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//
import SwiftUI
import Foundation

struct OrderItem: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var price: String
    var quantity: String
}

struct OrderContentView: View {
    let items: [OrderItem] = [
        OrderItem(image: "bagboy1", title: "Bix Bag Limited", subtitle: "Edition 229", price: "$ 100.00", quantity: "20"),
        OrderItem(image: "watchTissot", title: "Watch Limited", subtitle: "Edition 2024", price: "$ 10.00", quantity: "5"),
        OrderItem(image: "bag3", title: "Bag Girl Limited", subtitle: "Edition 2024", price: "$ 10.00", quantity: "2"),
        OrderItem(image: "bag4", title: "Bag Boy Limited", subtitle: "Edition 2024", price: "$ 100.00", quantity: "10")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(items) { item in
                customCardOrder(
                    image: item.image,
                    title: item.title,
                    subtitle: item.subtitle,
                    price: item.price,
                    quantity: item.quantity,
                    progress: "OnProgress",
                    btnTextColor: .yellow,
                    btnStrokeColor: .yellow
                )
            }
        }
        .padding(.horizontal,8)
    }
}

