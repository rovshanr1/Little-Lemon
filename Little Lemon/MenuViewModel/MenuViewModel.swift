//
//  MenuViewModel.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published var menuCategories: [String: [MenuItem]] = mockMenuCategories
    
    func getMenuItems(for category: String) -> [MenuItem] {
        return menuCategories[category] ?? []
    }
    
    func getAllCategories() -> [String] {
        return Array(menuCategories.keys)
    }
}
