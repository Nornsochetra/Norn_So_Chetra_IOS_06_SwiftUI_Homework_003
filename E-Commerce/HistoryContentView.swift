//
//  HistoryContentView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import SwiftUI
import Foundation

struct HistoryContentView: View {
    let items: [OrderItem] = [
        OrderItem(image: "bag3", title: "Bix Bag Limited", subtitle: "Edition 229", price: "$ 10.00", quantity: "20"),
        OrderItem(image: "shootnike", title: "Watch Limited", subtitle: "Edition 2024", price: "$ 10.00", quantity: "5"),
        OrderItem(image: "bagboy1", title: "Bag Girl Limited", subtitle: "Edition 2024", price: "$ 10.00", quantity: "2"),
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
                    progress: "Completed",
                    btnTextColor: .green,
                    btnStrokeColor: .green
                )
            }
        }
        .padding(.horizontal,8)
    }
}

