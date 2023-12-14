//
//  MainScreenView.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        NavigationView {
            List(CityData.cities) { city in
                DestinationCellView(city: city)
            }
        }
        .listStyle(.inset)
    }
}


#Preview {
    MainScreenView()
}


