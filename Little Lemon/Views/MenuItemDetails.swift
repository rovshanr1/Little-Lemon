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
                    
                    HStack(spacing: 12) {
                        CategoryBadge(category: menuItem.category)
                        
                        Spacer()
                        
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(menuItem.orderCount) orders")
                                .foregroundStyle(.secondary)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Ingredients")
                            .font(.headline)
                        
                       ForEach(menuItem.ingredients, id: \.self) { ingredient in
                                IngredientBadge(ingredient: ingredient)
                            
                        }
                    }
                    .padding(.top, 8)
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryBadge: View {
    let category: MenuCategory
    
    var backgroundColor: Color {
        switch category {
        case .food:
            return .orange
        case .drink:
            return .blue
        case .dessert:
            return .pink
        }
    }
    
    var body: some View {
        Text(category.rawValue)
            .font(.subheadline)
            .fontWeight(.medium)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(backgroundColor.opacity(0.2))
            .foregroundColor(backgroundColor)
            .clipShape(Capsule())
    }
}

struct IngredientBadge: View {
    let ingredient: Ingredient
    
    var body: some View {
        Text(ingredient.rawValue)
            .font(.subheadline)
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.gray.opacity(0.1))
            .foregroundColor(.primary)
            .clipShape(Capsule())
    }
}

#Preview {
    NavigationView {
        MenuItemDetails(menuItem: testMenuItem)
    }
}
