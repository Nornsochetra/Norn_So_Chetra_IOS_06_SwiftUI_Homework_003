//
//  CustomView.swift
//  E-Commerce
//
//  Created by So Chetra on 25/8/25.
//
import Foundation
import SwiftUI

func customBtn (text: String,action: @escaping () -> Void ) -> some View {
        Button(action: {
            action()
        }){
            Text("\(text)")
        }
        .padding()
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .background(.blue)
        .cornerRadius(50)
}

func customTextTitle (text: String,font: Font = .title,align: TextAlignment = .center) -> some View {
    Text(text)
        .font(font)
        .fontWeight(.bold)
        .multilineTextAlignment(align)
}

func customDescription (description: String,align: TextAlignment = .center) -> some View {
    Text(description)
        .foregroundColor(.secondary)
        .multilineTextAlignment(align)
}

func customBtnLogin(image: String,text: String) -> some View {
    HStack{
        Image(image)
            .resizable()
            .frame(width: 32, height: 32)
        Text(text)
            .foregroundStyle(.black)
            .font(.system(size: 18,weight: .medium))
    }
    .padding()
    .frame(maxWidth: .infinity)
    .overlay{
        RoundedRectangle(cornerRadius: 50)
            .stroke(Color(.systemGray3),style: StrokeStyle(lineWidth: 1))
    }
}
