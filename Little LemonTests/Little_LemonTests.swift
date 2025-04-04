//
//  Little_LemonTests.swift
//  Little LemonTests
//
//  Created by Rovshan Rasulov on 04.04.25.
//

import Testing
import XCTest
@testable import Little_Lemon

struct Little_LemonTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

}

final class MenuItemTests: XCTestCase {
    
    func test_MenuItemInitialization() {
        let menuItem = MenuItem(
            title: "Spaghetti Carbonara",
            ingredients: [.pasta, .eggs, .pecorino],
            imageName: "carbonara",
            price: 16.99,
            orderCount: 120,
            category: .food
        )
        
        XCTAssertEqual(menuItem.title, "Spaghetti Carbonara")
        XCTAssertEqual(menuItem.ingredients, [.pasta, .eggs, .pecorino])
        XCTAssertEqual(menuItem.imageName, "carbonara")
        XCTAssertEqual(menuItem.price, 16.99)
        XCTAssertEqual(menuItem.orderCount, 120)
        XCTAssertEqual(menuItem.category, .food)
    }
    
    func test_MenuItemEquality() {
        let menuItem1 = MenuItem(
            title: "Spaghetti Carbonara",
            ingredients: [.pasta, .eggs, .pecorino],
            imageName: "carbonara",
            price: 16.99,
            orderCount: 120,
            category: .food
        )
        
        let menuItem2 = MenuItem(
            title: "Spaghetti Carbonara",
            ingredients: [.pasta, .eggs, .pecorino],
            imageName: "carbonara",
            price: 16.99,
            orderCount: 120,
            category: .food
        )
        
        XCTAssertNotEqual(menuItem1.id, menuItem2.id) // Her MenuItem'ın unique bir ID'si olmalı
        XCTAssertEqual(menuItem1.title, menuItem2.title)
        XCTAssertEqual(menuItem1.ingredients, menuItem2.ingredients)
        XCTAssertEqual(menuItem1.price, menuItem2.price)
        XCTAssertEqual(menuItem1.category, menuItem2.category)
    }
    
    func test_MenuItemProtocolConformance() {
        let menuItem = MenuItem(
            title: "Spaghetti Carbonara",
            ingredients: [.pasta, .eggs, .pecorino],
            imageName: "carbonara",
            price: 16.99,
            orderCount: 120,
            category: .food
        )
        
        // MenuItemProtocol gereksinimlerini test et
        XCTAssertNotNil(menuItem.id)
        XCTAssertTrue(menuItem is MenuItemProtocol)
        
        // Değiştirilebilir özellikleri test et
        var mutableMenuItem = menuItem
        mutableMenuItem.orderCount = 150
        XCTAssertEqual(mutableMenuItem.orderCount, 150)
        
        mutableMenuItem.ingredients = [.pasta, .eggs]
        XCTAssertEqual(mutableMenuItem.ingredients.count, 2)
    }
}
