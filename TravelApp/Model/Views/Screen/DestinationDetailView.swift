//
//  DestinationDetailView.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import SwiftUI

struct DestinationDetailView: View {
    
    var city: City
    @Binding var navigationPath: NavigationPath
    @State private var showingTipAlert = false
    
    var body: some View {
        VStack(spacing: 10) {
            Image(city.mainImage)
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 320)
                .cornerRadius(4)
            
            Text(city.name)
                .font(.title)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
            
            Text(city.description)
                .font(.subheadline)
                .padding()
            
            Spacer()
            
            HStack(spacing: 4) {
                NavigationLink(value: "Transport") {
                    CustomButtonView(title: "Transport")
                }
                NavigationLink(value: "MustSee") {
                    CustomButtonView(title: "MustSee")
                }
                NavigationLink(value: "Hotel") {
                    CustomButtonView(title: "Hotel")
                }
                
                Button {
                    showingTipAlert.toggle()
                } label: {
                    Text("Travel Tip")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 80, height: 45)
                        .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                        .cornerRadius(6.0)
                }
            }
        }
        .navigationDestination(for: String.self) { category in
            switch category {
            case "Transport":
                TransportView(city: city, path: $navigationPath)
            case "Hotel":
                HotelView(city: city, path: $navigationPath)
            case "MustSee":
                MustSeeView(city: city, path: $navigationPath)
            default:
                EmptyView()
            }
        }
        
        .alert("Stay Safe!", isPresented: $showingTipAlert) {
            // Default Ok button
        } message: {
            Text(TravelTips.travelTips.randomElement() ?? "")
        }
    }
}
