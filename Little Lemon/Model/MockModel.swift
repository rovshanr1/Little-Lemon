//
//  MockModel.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation


enum SortOption: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case alphabetical = "A-Z"
}

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let ingredients: [Ingredient]
    let imageName: String
    let price: Double
    let orderCount: Int
}

let mockMenuCategories: [String: [MenuItem]] = [
    "Food": [
        // Italian Cuisine
        MenuItem(title: "Margherita Pizza", 
                ingredients: [.tomatoSauce, .mozzarella, .basil],
                imageName: "pizza",
                price: 14.99,
                orderCount: 150),
        MenuItem(title: "Spaghetti Carbonara", 
                ingredients: [.pasta, .eggs, .pecorino, .blackPepper, .guanciale],
                imageName: "carbonara",
                price: 16.99,
                orderCount: 120),
        MenuItem(title: "Lasagna", 
                ingredients: [.pasta, .tomatoSauce, .mozzarella, .beef, .parmesan],
                imageName: "lasagna",
                price: 18.99,
                orderCount: 90),
        MenuItem(title: "Risotto Mushroom", 
                ingredients: [.rice, .mushrooms, .parmesan, .butter, .herbs],
                imageName: "risotto",
                price: 17.99,
                orderCount: 80),
        
        // Seafood
        MenuItem(title: "Grilled Salmon", 
                ingredients: [.salmon, .lemon, .herbs, .oliveOil],
                imageName: "salmon",
                price: 24.99,
                orderCount: 100),
        MenuItem(title: "Shrimp Scampi", 
                ingredients: [.shrimp, .garlic, .butter, .whiteWine, .pasta],
                imageName: "shrimp",
                price: 22.99,
                orderCount: 85),
        MenuItem(title: "Fish & Chips", 
                ingredients: [.fish, .flour, .potatoes, .herbs],
                imageName: "fish",
                price: 19.99,
                orderCount: 110),
        
        // Salads & Light Meals
        MenuItem(title: "Caesar Salad", 
                ingredients: [.lettuce, .croutons, .parmesan, .caesarDressing],
                imageName: "caesar",
                price: 12.99,
                orderCount: 200),
        MenuItem(title: "Greek Salad", 
                ingredients: [.cucumber, .tomatoes, .olives, .feta, .oliveOil],
                imageName: "greek",
                price: 11.99,
                orderCount: 180),
        MenuItem(title: "Quinoa Bowl", 
                ingredients: [.quinoa, .avocado, .spinach, .chickpeas],
                imageName: "quinoa",
                price: 13.99,
                orderCount: 95),
        
        // Asian Fusion
        MenuItem(title: "Chicken Teriyaki", 
                ingredients: [.chicken, .soySauce, .rice, .vegetables],
                imageName: "teriyaki",
                price: 15.99,
                orderCount: 130),
        MenuItem(title: "Pad Thai", 
                ingredients: [.noodles, .shrimp, .peanuts, .eggs, .beanSprouts],
                imageName: "padthai",
                price: 16.99,
                orderCount: 140)
    ],
    
    "Drink": [
        // Coffee & Tea
        MenuItem(title: "Espresso", 
                ingredients: [.coffeeBeans, .water],
                imageName: "espresso",
                price: 3.99,
                orderCount: 300),
        MenuItem(title: "Cappuccino", 
                ingredients: [.coffeeBeans, .milk, .water],
                imageName: "cappuccino",
                price: 4.99,
                orderCount: 250),
        MenuItem(title: "Green Tea Latte", 
                ingredients: [.greenTea, .milk, .honey],
                imageName: "greentea",
                price: 4.49,
                orderCount: 180),
        
        // Refreshing Drinks
        MenuItem(title: "Lemonade", 
                ingredients: [.water, .sugar, .lemon],
                imageName: "lemonade",
                price: 3.49,
                orderCount: 220),
        MenuItem(title: "Iced Tea", 
                ingredients: [.tea, .water, .lemon, .mint],
                imageName: "icedtea",
                price: 3.99,
                orderCount: 200),
        
        // Cocktails
        MenuItem(title: "Mojito", 
                ingredients: [.rum, .mint, .sugar, .water, .lemon],
                imageName: "mojito",
                price: 8.99,
                orderCount: 160),
        MenuItem(title: "Blue Lagoon", 
                ingredients: [.vodka, .blueCuracao, .lemon, .water],
                imageName: "bluelagoon",
                price: 9.99,
                orderCount: 140),
        MenuItem(title: "Margarita", 
                ingredients: [.tequila, .lemon, .sugar, .salt],
                imageName: "margarita",
                price: 8.99,
                orderCount: 170)
    ],
    
    "Dessert": [
        MenuItem(title: "Chocolate Brownie", 
                ingredients: [.chocolate, .flour, .eggs, .butter, .sugar, .vanilla],
                imageName: "brownie",
                price: 6.99,
                orderCount: 200),
        MenuItem(title: "Caramel Cake", 
                ingredients: [.flour, .eggs, .butter, .sugar, .honey, .cream, .vanilla],
                imageName: "caramelcake",
                price: 7.99,
                orderCount: 180),
        MenuItem(title: "Classic Cheesecake", 
                ingredients: [.cream, .eggs, .sugar, .vanilla, .graham, .butter],
                imageName: "cheesecake",
                price: 8.99,
                orderCount: 220),
        MenuItem(title: "Chocolate Raspberry Delight", 
                ingredients: [.chocolate, .cream, .eggs, .sugar, .flour, .vanilla],
                imageName: "chocolateraspberry",
                price: 9.99,
                orderCount: 160)
    ]
]


let testMenuItem = MenuItem(
    title: "Margherita Pizza",
    ingredients: [.tomatoSauce, .mozzarella, .basil],
    imageName: "pizza",
    price: 14.99,
    orderCount: 150
)

