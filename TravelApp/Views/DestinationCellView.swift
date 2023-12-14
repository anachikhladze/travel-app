//
//  DestinationCellView.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import SwiftUI

struct DestinationCellView: View {
    var city: City
    
    var body: some View {
        HStack() {
            Image(city.mainImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(city.name)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
                Text(city.description)
                    .font(.subheadline)
                    .lineLimit(1)
                
                NavigationLink {
                    VStack {
                        DestinationDetailView(city: city)
                    }
                    
                } label: {
                    Text("Details")
                }
                .font(.callout)
            }
            
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}

