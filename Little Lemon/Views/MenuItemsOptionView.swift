//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @ObservedObject var viewModel: MenuViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Toggle(category.rawValue, isOn: Binding(
                            get: { viewModel.isCategorySelected(category) },
                            set: { isSelected in
                                viewModel.toggleCategory(category)
                            }
                        ))
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(SortOption.allCases, id: \.self) { option in
                        Button(action: {
                            viewModel.selectedSortOption = option
                        }) {
                            HStack {
                                Text(option.rawValue)
                                Spacer()
                                if viewModel.selectedSortOption == option {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu Options")
            .navigationBarItems(trailing: Button("Done") {
                dismiss()
            })
        }
    }
}

#Preview {
    MenuItemsOptionView(viewModel: MenuViewModel())
}

