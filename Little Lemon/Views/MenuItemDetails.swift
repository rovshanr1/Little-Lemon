//
//  MenuItemDetails.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import SwiftUI

struct MenuItemDetails: View {
    let menuItem: MenuItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(menuItem.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text(menuItem.title)
                            .font(.title)
                            .bold()
                        Spacer()
                        Text("$\(String(format: "%.2f", menuItem.price))")
                            .font(.title2)
                            .foregroundColor(.green)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Popularity:")
                            .font(.headline)
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(menuItem.orderCount) order")
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                    Text("Ingredient:")
                        .font(.headline)
                        .padding(.top, 8)
                    
                    ForEach(menuItem.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient.rawValue)")
                            .foregroundStyle(.secondary)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        MenuItemDetails(menuItem: testMenuItem)
    }
}
