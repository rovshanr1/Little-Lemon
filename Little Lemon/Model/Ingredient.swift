//
//  Ingredient.swift
//  Little Lemon
//
//  Created by Rovshan Rasulov on 03.04.25.
//

import Foundation

enum Ingredient: String, CaseIterable {
    // Base Ingredients
    case flour = "Flour"
    case water = "Water"
    case salt = "Salt"
    case sugar = "Sugar"
    case butter = "Butter"
    case eggs = "Eggs"
    
    // Vegetables & Fruits
    case tomatoes = "Tomatoes"
    case lettuce = "Lettuce"
    case cucumber = "Cucumber"
    case olives = "Olives"
    case lemon = "Lemon"
    case apples = "Apples"
    case beanSprouts = "Bean Sprouts"
    case spinach = "Spinach"
    case avocado = "Avocado"
    case vegetables = "Mixed Vegetables"
    
    // Proteins
    case chicken = "Chicken"
    case beef = "Ground Beef"
    case fish = "White Fish"
    case salmon = "Salmon"
    case shrimp = "Shrimp"
    
    // Dairy & Cheese
    case milk = "Milk"
    case cream = "Cream Cheese"
    case mozzarella = "Mozzarella"
    case parmesan = "Parmesan"
    case pecorino = "Pecorino"
    case feta = "Feta Cheese"
    case mascarpone = "Mascarpone"
    
    // Grains & Pasta
    case pasta = "Pasta"
    case rice = "Arborio Rice"
    case noodles = "Rice Noodles"
    case quinoa = "Quinoa"
    case croutons = "Croutons"
    case graham = "Graham Crackers"
    
    // Sauces & Dressings
    case tomatoSauce = "Tomato Sauce"
    case caesarDressing = "Caesar Dressing"
    case soySauce = "Soy Sauce"
    case oliveOil = "Olive Oil"
    
    // Herbs & Spices
    case basil = "Fresh Basil"
    case herbs = "Mixed Herbs"
    case garlic = "Garlic"
    case blackPepper = "Black Pepper"
    case cinnamon = "Cinnamon"
    
    // Alcoholic Ingredients
    case rum = "White Rum"
    case vodka = "Vodka"
    case tequila = "Tequila"
    case whiteWine = "White Wine"
    case blueCuracao = "Blue Curacao"
    
    // Coffee & Tea
    case coffeeBeans = "Coffee Beans"
    case tea = "Black Tea"
    case greenTea = "Green Tea"
    case cocoa = "Cocoa Powder"
    
    // Other
    case mint = "Fresh Mint"
    case peanuts = "Crushed Peanuts"
    case chocolate = "Dark Chocolate"
    case vanilla = "Vanilla Extract"
    case honey = "Honey"
    case mushrooms = "Wild Mushrooms"
    case guanciale = "Guanciale"
    case chickpeas = "Chickpeas"
    case potatoes = "Potatoes"
}
