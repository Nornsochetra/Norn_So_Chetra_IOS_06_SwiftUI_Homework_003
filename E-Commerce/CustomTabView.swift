//
//  CustomTabView.swift
//  E-Commerce
//
//  Created by So Chetra on 1/9/25.
//

import SwiftUI
import Foundation

func customProfileHeader(image: String, name: String, subtitle: String,icon1: String,icon2: String) -> some View {
    HStack {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 70,height: 70)
            .cornerRadius(40)
        VStack(alignment: .leading) {
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.leading, 6)
        Spacer()
        Image(systemName: icon1)
            .font(.title3)
            .foregroundColor(.black)
            .padding(.trailing, 10)
        
        Image(systemName: icon2)
            .font(.title3)
            .foregroundColor(.black)
            .padding(.trailing, 16)
    }
    .padding()
}

struct CustomCardView: View {
    let image: String
    let icon: String
    let title: String
    let subtitle: String
    let price: String
    
    @State private var isLiked = false
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack(alignment: .topTrailing) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 200)
                    .clipped()
                    .cornerRadius(15)
                
                Button(action: {
                    isLiked.toggle()
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18, height: 18)
                        .padding(10)
                        .background(.black.opacity(0.5))
                        .cornerRadius(40)
                        .foregroundStyle(isLiked ? .red : .white)
                }
                .padding([.top, .trailing], 6)
            }
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            Text(subtitle)
                .font(.subheadline)
                .foregroundStyle(Color(.systemGray))
            Text(price)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

func customCardOrder(image: String,title: String,subtitle: String,price: String,quantity: String,progress: String,btnTextColor: Color,btnStrokeColor: Color) -> some View {
    VStack(spacing: 0) {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(20)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                Text(subtitle)
                    .font(.system(size: 18))
                    .fontWeight(.bold)

                HStack(spacing: 4) {
                    Text("Color: ")
                        .font(.subheadline)
                        .foregroundStyle(Color(.systemGray2))
                    Text("White")
                        .font(.subheadline)
                }

                HStack(spacing: 4) {
                    Text("Qty: ")
                        .font(.subheadline)
                        .foregroundStyle(Color(.systemGray2))
                    Text(quantity)
                        .font(.subheadline)
                }
            }

            Spacer()

            VStack (alignment: .trailing){
                Text(progress)
                    .font(.subheadline)
                    .foregroundStyle(btnTextColor)
                    .padding(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(btnStrokeColor), style: StrokeStyle(lineWidth: 1))
                    }
                Text(price)
            }
        }
        HStack{
            Button("Detail"){
                
            }
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            .padding(8)
            .frame(maxWidth: .infinity)
            .overlay {
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color(.systemGray3), style: StrokeStyle(lineWidth: 1))
            }
            Button("Tracking"){
                
            }
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding(8)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(40)
        }
        .padding(.top,20)
    }
    .padding(15)
    .frame(maxWidth: .infinity)
    .overlay {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.systemGray3), style: StrokeStyle(lineWidth: 1))
    }
}
