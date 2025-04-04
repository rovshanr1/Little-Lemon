//
//  MenuViewModel.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published var foodMenuItems: [MenuItem] = mockMenuCategories[MenuCategory.food.rawValue] ?? []
    @Published var drinkMenuItems: [MenuItem] = mockMenuCategories[MenuCategory.drink.rawValue] ?? []
    @Published var dessertMenuItems: [MenuItem] = mockMenuCategories[MenuCategory.dessert.rawValue] ?? []
    
    @Published var selectedCategories: Set<MenuCategory> = Set(MenuCategory.allCases)
    @Published var selectedSortOption: SortOption = .mostPopular
    @Published var categoryFilters: [String: Bool] = ["Food": true, "Drink": true, "Dessert": true]
    @Published var minPrice: Double = 0
    @Published var maxPrice: Double = 50
    
    func getMenuItems(for category: String) -> [MenuItem] {
        let items: [MenuItem]
        switch category {
        case MenuCategory.food.rawValue:
            items = foodMenuItems
        case MenuCategory.drink.rawValue:
            items = drinkMenuItems
        case MenuCategory.dessert.rawValue:
            items = dessertMenuItems
        default:
            items = []
        }
        return filterAndSortItems(items)
    }
    
    func getAllCategories() -> [String] {
        return selectedCategories.map { $0.rawValue }
    }
    
    private func filterAndSortItems(_ items: [MenuItem]) -> [MenuItem] {
        var filteredItems = items
        
        switch selectedSortOption {
        case .mostPopular:
            filteredItems.sort { $0.orderCount > $1.orderCount }
        case .price:
            filteredItems.sort { $0.price < $1.price }
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
    
    func getIngredients(for item: MenuItem) -> [String] {
        return item.ingredients.map { $0.rawValue }
    }
}

