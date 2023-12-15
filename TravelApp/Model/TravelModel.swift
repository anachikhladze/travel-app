//
//  TravelModel.swift
//  TravelApp
//
//  Created by Anna Sumire on 13.12.23.
//

import Foundation

struct City: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var transport: String
    var hotel: String
    var mustSee: String
    var mainImage: String
    var transportImage: String
    var hotelImage: String
    var mustSeeImage: String
}

struct CityData {
    static let cities = [
        City(
            name: "New York",
            description: "New York City, located in the state of New York, USA, is a global metropolis known for its towering skyscrapers, diverse neighborhoods, and iconic landmarks. The city is a melting pot of cultures, offering a wide range of cuisines, arts, and entertainment. With landmarks like Times Square, Central Park, and the Statue of Liberty, New York is a symbol of urban vibrancy and cultural richness.",
            transport: "Extensive subway system and yellow taxis make it easy to navigate the city.",
            hotel: "Luxurious hotels in Manhattan like The Plaza Hotel offer world-class accommodation.",
            mustSee: "Don't miss the dazzling lights of Times Square, the sprawling beauty of Central Park, and the historic Statue of Liberty.",
            mainImage: "newyork",
            transportImage: "newyorktransport",
            hotelImage: "newyorkht",
            mustSeeImage: "newyork"
        ),
        City(
            name: "Tokyo",
            description: "Tokyo, the capital of Japan, is a dynamic metropolis that seamlessly blends modernity with tradition. Known for its futuristic skyscrapers, high-tech gadgets, and efficient public transportation, Tokyo also preserves its rich cultural heritage with historic temples and shrines. The city's diverse districts, from the bustling Shibuya to the serene Meiji Shrine, offer a unique experience at every turn.",
            transport: "Efficient public transportation, including the famous Shinkansen (bullet train), connects the city seamlessly.",
            hotel: "Modern hotels in districts like Shibuya and Shinjuku cater to the needs of both business and leisure travelers.",
            mustSee: "Explore Tokyo Tower for panoramic views, visit the serene Meiji Shrine, and experience the vibrant energy of Akihabara.",
            mainImage: "tokyo",
            transportImage: "tokyotr",
            hotelImage: "tokyoht",
            mustSeeImage: "tokyo"
        ),
        City(
            name: "Paris",
            description: "Paris, the capital of France, is a city of romance, art, and elegance. Renowned for its world-class museums, charming cafes, and iconic landmarks, Paris has a timeless appeal. The Eiffel Tower, Louvre Museum, and Notre-Dame Cathedral are just a few highlights that attract millions of visitors each year. Stroll through the historic neighborhoods, enjoy French cuisine, and immerse yourself in the city's artistic atmosphere.",
            transport: "Navigate the city with the efficient metro system and enjoy iconic river cruises along the Seine.",
            hotel: "Charming hotels in neighborhoods like Montmartre provide a cozy stay with Parisian flair.",
            mustSee: "Experience the art at the Louvre Museum, admire the architecture of Notre-Dame Cathedral, and enjoy the bohemian charm of Montmartre.",
            mainImage: "paris",
            transportImage: "paristr",
            hotelImage: "parisht",
            mustSeeImage: "paris"
        ),
        City(
            name: "Sydney",
            description: "Sydney, a city on Australia's east coast, is known for its stunning harbor, iconic landmarks, and vibrant lifestyle. The Sydney Opera House and Sydney Harbour Bridge are architectural marvels that define the cityscape. With beautiful beaches like Bondi and a mix of cultural attractions, Sydney offers a perfect blend of urban sophistication and natural beauty.",
            transport: "Ferries and trains provide efficient transportation, connecting the city and its harbor areas.",
            hotel: "Harbor-side hotels with breathtaking views offer a luxurious stay in the heart of the city.",
            mustSee: "Witness the iconic Sydney Opera House, relax on the sandy shores of Bondi Beach, and take in panoramic views from the Sydney Harbour Bridge.",
            mainImage: "sydney",
            transportImage: "sydneytr",
            hotelImage: "sydneyht",
            mustSeeImage: "sydney"
        ),
        City(
            name: "Rio de Janeiro",
            description: "Rio de Janeiro, a lively city in Brazil, is famed for its samba rhythms, colorful carnival celebrations, and breathtaking landscapes. With golden beaches like Copacabana and Ipanema, lush mountains, and iconic landmarks such as Christ the Redeemer, Rio captivates visitors with its natural beauty and vibrant culture.",
            transport: "Buses, metro, and cable cars provide scenic transportation options in this energetic city.",
            hotel: "Beachfront hotels in Copacabana and Ipanema offer stunning views and a relaxing stay.",
            mustSee: "Marvel at the iconic Christ the Redeemer statue, soak up the sun on Copacabana Beach, and take a cable car to the top of Sugarloaf Mountain for panoramic vistas.",
            mainImage: "rio",
            transportImage: "riotr",
            hotelImage: "rioht",
            mustSeeImage: "rio"
        )
    ]
    
}

struct TravelTips {
    static let travelTips = [
        "Pack light and smart. Only bring essentials.",
        "Always carry a photocopy of your important documents.",
        "Inform your bank about your travel plans to avoid any issues with your credit/debit cards.",
        "Learn a few basic phrases in the local language for better communication.",
        "Keep a portable charger for your electronic devices.",
        "Stay hydrated, especially during long flights.",
        "Research local customs and traditions before visiting a new country.",
        "Use a money belt or hidden pouch to keep your valuables safe.",
        "Keep a small first aid kit with essentials like band-aids and pain relievers.",
        "Stay aware of your surroundings and trust your instincts.",
    ]
}
