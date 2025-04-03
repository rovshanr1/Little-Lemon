//
//  MenuViewModel.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published var menuCategories: [String: [MenuItem]] = mockMenuCategories
    @Published var selectedCategories: Set<MenuCategory> = Set(MenuCategory.allCases)
    @Published var selectedSortOption: SortOption = .mostPopular
    @Published var categoryFilters: [String: Bool] = ["Food": true, "Drink": true, "Dessert": true]
    @Published var minPrice: Double = 0
    @Published var maxPrice: Double = 50
    
    func getMenuItems(for category: String) -> [MenuItem] {
        let items = menuCategories[category] ?? []
        return filterAndSortItems(items)
    }
    
    func getAllCategories() -> [String] {
        return Array(menuCategories.keys).filter { category in
            if let menuCategory = MenuCategory(rawValue: category) {
                return selectedCategories.contains(menuCategory)
            }
            return false
        }
    }
    
    private func filterAndSortItems(_ items: [MenuItem]) -> [MenuItem] {
        var filteredItems = items
        
        switch selectedSortOption {
        case .mostPopular:
            // Since we don't track popularity anymore, we'll return items as is
            break
        case .price:
            // Since we don't track price anymore, we'll sort by title
            filteredItems.sort { $0.title < $1.title }
        case .alphabetical:
            filteredItems.sort { $0.title < $1.title }
        }
        
        return filteredItems
    }
    
    func toggleCategory(_ category: MenuCategory) {
        if selectedCategories.contains(category) {
            selectedCategories.remove(category)
        } else {
            selectedCategories.insert(category)
        }
        objectWillChange.send()
    }
    
    func isCategorySelected(_ category: MenuCategory) -> Bool {
        return selectedCategories.contains(category)
    }
    
    func applyFilters(sortOption: SortOption, categories: [String: Bool], min: Double, max: Double) {
        selectedSortOption = sortOption
        categoryFilters = categories
        minPrice = min
        maxPrice = max
        objectWillChange.send()
    }
    
    // Helper function to get ingredients for a menu item
    func getIngredients(for item: MenuItem) -> [String] {
        return item.ingredients.map { $0.rawValue }
    }
}

