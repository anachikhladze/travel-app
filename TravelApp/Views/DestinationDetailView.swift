//
//  DestinationDetailView.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import SwiftUI

struct DestinationDetailView: View {
    var city: City
    @State private var isHotelViewActive = false
    @State private var isTransportViewActive = false
    @State private var isMustSeeViewActive = false
    
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
            
            HStack {
                Button(action: {
                    isTransportViewActive = true
                }) {
                    Text("Transport")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 45)
                        .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                        .cornerRadius(6.0)
                    
                    Button(action: {
                        isHotelViewActive = true
                    }) {
                        Text("Hotels")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 100, height: 45)
                            .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                            .cornerRadius(6.0)
                        
                        Button(action: {
                            isMustSeeViewActive = true
                        }) {
                            Text("Must See")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 100, height: 45)
                                .background((Color(red: 0.14, green: 0.15, blue: 0.38, opacity: 1)))
                                .cornerRadius(6.0)
                            
                        }
                    }
                    
                    NavigationLink (
                        destination: HotelView(city: city),
                        isActive: $isHotelViewActive
                    ) {
                        EmptyView()
                    }
                    .hidden()
                    
                    NavigationLink (
                        destination: TransportView(city: city),
                        isActive: $isTransportViewActive
                    ) {
                        EmptyView()
                    }
                    .hidden()
                    
                    NavigationLink (
                        destination: MustSeeView(city: city),
                        isActive: $isMustSeeViewActive
                    ) {
                        EmptyView()
                    }
                    .hidden()
                }
                
            }
            
        }
        
    }
}


struct DestinationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDetailView(city: CityData.cities[0])
    }
}
