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
                    Text(menuItem.title)
                        .font(.title)
                        .bold()
                    
                    Text("Malzemeler:")
                        .font(.headline)
                    
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
