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

