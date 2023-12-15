//
//  MainScreenView.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import SwiftUI

struct MainScreenView: View {
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            List(CityData.cities) { city in
                NavigationLink(value: city) {
                    DestinationCellView(city: city)
                }
            }
            .navigationDestination(for: City.self) { city in
                DestinationDetailView(city: city, navigationPath: $navigationPath)
            }
            .listStyle(.inset)
        }
    }
}

#Preview {
    MainScreenView()
}
