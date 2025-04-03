//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var viewModel: MenuViewModel
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    let categoryOrder: [String] = ["Food", "Drink", "Dessert"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                ForEach(viewModel.getAllCategories().sorted{
                    categoryOrder.firstIndex(of: $0) ?? 0 < categoryOrder.firstIndex(of: $1) ?? 0
                }, id: \.self) { category in
                    VStack(alignment: .leading, spacing: 16) {
                        Text(category)
                            .font(.title2)
                            .bold()
                            .padding(.leading, 20)
                        
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(viewModel.getMenuItems(for: category)) { item in
                                VStack(spacing: 8) {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(height: 120)
                                        .clipped()
                                    
                                    VStack(spacing: 4) {
                                        Text(item.name)
                                            .font(.headline)
                                            .multilineTextAlignment(.center)
                                        
                                        Text(String(format: "$%.2f", item.price))
                                            .font(.subheadline)
                                            .foregroundStyle(.secondary)
                                    }
                                    .padding(.horizontal, 8)
                                    .padding(.bottom, 8)
                                }
                                .background(Color(.systemBackground))
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    MenuItemsView(viewModel: MenuViewModel())
}
