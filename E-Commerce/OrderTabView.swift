//
//  OrderTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//
import Foundation
import SwiftUI

struct OrderTabView: View {
    @State private var selectTab: String = "My Order"
    var body: some View {
        VStack{
            ZStack {
                Text("My Order")
                    .font(.headline)
                    .fontWeight(.semibold)
                HStack {
                    Spacer()
                    Image(systemName: "handbag")
                        .font(.title3)
                        .padding(.trailing)
                }
            }
            .padding()
            HStack(spacing: 100){
                Button(action: {
                    selectTab = "My Order"
                }){
                    Text("My Order")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(selectTab == "My Order" ? .blue : .black)
                }
                Button(action: {
                    selectTab = "History"
                }){
                    Text("History")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(selectTab == "History" ? .blue : .black)
                }
            }
            .padding(.top)
            ZStack(alignment: .bottom){
                Divider()
                HStack {
                    if selectTab == "My Order" {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 2)
                            .padding(.horizontal,75)
                            Spacer()
                    } else {
                        Spacer()
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 2)
                            .padding(.horizontal,65)
                        }
                }
                .animation(.easeInOut(duration: 0.3), value: selectTab)
            }
            if selectTab == "My Order"{
                ScrollView{
                    OrderContentView()
                }
            }else {
                ScrollView{
                    HistoryContentView()
                }
            }
        }
    }
}
