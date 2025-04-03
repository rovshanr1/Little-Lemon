//
//  MockModel.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation

struct MenuItem: Identifiable{
    let id = UUID()
    let name: String
    let category: String
    let price: Double
    let imageName: String
}


let mockMenuCategories: [String: [MenuItem]] = [
        "Food": [
            MenuItem(name: "Margherita Pizza", category: "Food", price: 12.99, imageName: "pizza"),
            MenuItem(name: "Caesar Salad", category: "Food", price: 9.99, imageName: "salad"),
            MenuItem(name: "Grilled Salmon", category: "Food", price: 18.99, imageName: "salmon"),
            MenuItem(name: "Spaghetti Carbonara", category: "Food", price: 14.99, imageName: "carbonara")
        ],
        "Drink": [
            MenuItem(name: "Lemonade", category: "Drink", price: 4.99, imageName: "lemonade"),
            MenuItem(name: "Espresso", category: "Drink", price: 3.99, imageName: "espresso"),
            MenuItem(name: "Mojito", category: "Drink", price: 7.49, imageName: "mojito"),
            MenuItem(name: "Blue Lagoon Cocktail", category: "Drink", price: 10.49, imageName: "lagon")
        ],
        "Dessert": [
            MenuItem(name: "Cheesecake", category: "Dessert", price: 6.99, imageName: "cheesecake"),
            MenuItem(name: "Brownie", category: "Dessert", price: 5.99, imageName: "brownie"),
            MenuItem(name: "Chocolate Raspberry", category: "Dessert", price: 6.49, imageName: "chocolateraspberry"),
            MenuItem(name: "Caramel Cake", category: "Desert", price: 7, imageName: "caramelcake")
        ]
    ]

