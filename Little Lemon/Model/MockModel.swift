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
}

let mockMenuCategories: [String: [MenuItem]] = [
    "Food": [
        // Italian Cuisine
        MenuItem(title: "Margherita Pizza", 
                ingredients: [.tomatoSauce, .mozzarella, .basil],
                imageName: "pizza"),
        MenuItem(title: "Spaghetti Carbonara", 
                ingredients: [.pasta, .eggs, .pecorino, .blackPepper, .guanciale],
                imageName: "carbonara"),
        MenuItem(title: "Lasagna", 
                ingredients: [.pasta, .tomatoSauce, .mozzarella, .beef, .parmesan],
                imageName: "lasagna"),
        MenuItem(title: "Risotto Mushroom", 
                ingredients: [.rice, .mushrooms, .parmesan, .butter, .herbs],
                imageName: "risotto"),
        
        // Seafood
        MenuItem(title: "Grilled Salmon", 
                ingredients: [.salmon, .lemon, .herbs, .oliveOil],
                imageName: "salmon"),
        MenuItem(title: "Shrimp Scampi", 
                ingredients: [.shrimp, .garlic, .butter, .whiteWine, .pasta],
                imageName: "shrimp"),
        MenuItem(title: "Fish & Chips", 
                ingredients: [.fish, .flour, .potatoes, .herbs],
                imageName: "fish"),
        
        // Salads & Light Meals
        MenuItem(title: "Caesar Salad", 
                ingredients: [.lettuce, .croutons, .parmesan, .caesarDressing],
                imageName: "caesar"),
        MenuItem(title: "Greek Salad", 
                ingredients: [.cucumber, .tomatoes, .olives, .feta, .oliveOil],
                imageName: "greek"),
        MenuItem(title: "Quinoa Bowl", 
                ingredients: [.quinoa, .avocado, .spinach, .chickpeas],
                imageName: "quinoa"),
        
        // Asian Fusion
        MenuItem(title: "Chicken Teriyaki", 
                ingredients: [.chicken, .soySauce, .rice, .vegetables],
                imageName: "teriyaki"),
        MenuItem(title: "Pad Thai", 
                ingredients: [.noodles, .shrimp, .peanuts, .eggs, .beanSprouts],
                imageName: "padthai")
    ],
    
    "Drink": [
        // Coffee & Tea
        MenuItem(title: "Espresso", 
                ingredients: [.coffeeBeans, .water],
                imageName: "espresso"),
        MenuItem(title: "Cappuccino", 
                ingredients: [.coffeeBeans, .milk, .water],
                imageName: "cappuccino"),
        MenuItem(title: "Green Tea Latte", 
                ingredients: [.greenTea, .milk, .honey],
                imageName: "greentea"),
        
        // Refreshing Drinks
        MenuItem(title: "Lemonade", 
                ingredients: [.water, .sugar, .lemon],
                imageName: "lemonade"),
        MenuItem(title: "Iced Tea", 
                ingredients: [.tea, .water, .lemon, .mint],
                imageName: "icedtea"),
        
        // Cocktails
        MenuItem(title: "Mojito", 
                ingredients: [.rum, .mint, .sugar, .water, .lemon],
                imageName: "mojito"),
        MenuItem(title: "Blue Lagoon", 
                ingredients: [.vodka, .blueCuracao, .lemon, .water],
                imageName: "bluelagoon"),
        MenuItem(title: "Margarita", 
                ingredients: [.tequila, .lemon, .sugar, .salt],
                imageName: "margarita")
    ],
    
    "Dessert": [
        MenuItem(title: "Chocolate Brownie", 
                ingredients: [.chocolate, .flour, .eggs, .butter, .sugar, .vanilla],
                imageName: "brownie"),
        MenuItem(title: "Caramel Cake", 
                ingredients: [.flour, .eggs, .butter, .sugar, .honey, .cream, .vanilla],
                imageName: "caramelcake"),
        MenuItem(title: "Classic Cheesecake", 
                ingredients: [.cream, .eggs, .sugar, .vanilla, .graham, .butter],
                imageName: "cheesecake"),
        MenuItem(title: "Chocolate Raspberry Delight", 
                ingredients: [.chocolate, .cream, .eggs, .sugar, .flour, .vanilla],
                imageName: "chocolateraspberry")
    ]
]


let testMenuItem = MenuItem(
    title: "Margherita Pizza",
    ingredients: [.tomatoSauce, .mozzarella, .basil],
    imageName: "pizza"
)

