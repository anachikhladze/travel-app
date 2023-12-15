//
//  CustomButtonView.swift
//  TravelApp
//
//  Created by Anna Sumire on 15.12.23.
//

import SwiftUI

struct CustomButtonView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 90, height: 45)
            .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
            .cornerRadius(6.0)
    }
}

#Preview {
    CustomButtonView(title: "Test")
}

