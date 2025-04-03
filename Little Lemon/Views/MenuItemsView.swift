//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var viewModel: MenuViewModel
    @State private var showingOptions = false
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    let categoryOrder: [String] = ["Food", "Drink", "Dessert"]
    
    private var sortedCategories: [String] {
        viewModel.getAllCategories().sorted { first, second in
            let firstIndex = categoryOrder.firstIndex(of: first) ?? 0
            let secondIndex = categoryOrder.firstIndex(of: second) ?? 0
            return firstIndex < secondIndex
        }
    }
    
    private func menuItemView(for item: MenuItem) -> some View {
        NavigationLink(destination: MenuItemDetails(menuItem: item)) {
            VStack(spacing: 8) {
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                    .clipped()
                
                VStack(spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 8)
            }
            .background(Color(.systemBackground))
        }
    }
    
    private func categoryView(for category: String) -> some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(category)
                .font(.title2)
                .bold()
                .padding(.leading, 20)
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.getMenuItems(for: category)) { item in
                    menuItemView(for: item)
                }
            }
            .padding(.horizontal)
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(sortedCategories, id: \.self) { category in
                        categoryView(for: category)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Little Lemon Menu")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingOptions = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
        .sheet(isPresented: $showingOptions) {
            MenuItemsOptionView(viewModel: viewModel)
        }
    }
}

#Preview {
    MenuItemsView(viewModel: MenuViewModel())
}
