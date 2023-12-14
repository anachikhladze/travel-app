//
//  TransportView.swift
//  TravelApp
//
//  Created by Anna Sumire on 14.12.23.
//

import SwiftUI

struct TransportView: View {
    var city: City
    var body: some View {
        VStack(spacing: 10) {
            Image(city.transportImage)
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 320)
                .cornerRadius(4)
            
            Text(city.name)
                .font(.title)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
            
            Text(city.transport)
                .font(.subheadline)
                .padding()
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("Back to main page")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 140, height: 45)
                    .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                    .cornerRadius(6.0)
            }
        }
    }
}
