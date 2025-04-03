//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: MenuViewModel
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Toggle(category.rawValue, isOn: Binding(
                            get: { viewModel.isCategorySelected(category) },
                            set: { _ in viewModel.toggleCategory(category) }
                        ))
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(SortOption.allCases, id: \.self) { option in
                        Button {
                            viewModel.selectedSortOption = option
                        } label: {
                            HStack {
                                Text(option.rawValue)
                                Spacer()
                                if viewModel.selectedSortOption == option {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                        .foregroundColor(.primary)
                    }
                }
            }
            .navigationTitle("Menu Options")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Apply") {
                        viewModel.objectWillChange.send()
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    MenuItemsOptionView(viewModel: MenuViewModel())
}

