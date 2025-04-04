# Little Lemon Restaurant App

A modern iOS application built with SwiftUI for the Little Lemon restaurant, featuring an interactive menu system with filtering and sorting capabilities.

## Features

### Menu Display
- Grid layout displaying food, drinks, and dessert items
- High-quality images for each menu item
- Category-based organization
- Detailed view for each menu item

### Filtering & Sorting
- Filter by category (Food, Drinks, Desserts)
- Sort by:
  - Most Popular
  - Price (Low to High)
  - Alphabetical (A-Z)

### Detailed Information
- Item prices
- Ingredient lists
- Order count (popularity)
- Category badges
- Large format images

## Technical Details

### Architecture
- MVVM (Model-View-ViewModel) architecture
- Protocol-oriented programming
- SwiftUI framework

### Key Components
1. **Models**
   - MenuItem (conforming to MenuItemProtocol)
   - MenuCategory enum
   - Ingredient enum

2. **Views**
   - MenuItemsView (main grid view)
   - MenuItemDetails (detailed item view)
   - MenuItemsOptionView (filtering options)

3. **ViewModel**
   - MenuViewModel (manages menu data and filtering)

### Requirements
- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Installation

1. Clone the repository
```bash
git clone [https://github.com/rovshanr1/Little-Lemon.git]
```

2. Open the project in Xcode
```bash
cd Little-Lemon
open Little\ Lemon.xcodeproj
```

3. Build and run the project

## Testing

The project includes unit tests for:
- MenuItem initialization
- Protocol conformance
- Data consistency
- Menu item equality

Run tests in Xcode using:
- Command + U
- Product > Test

## Project Structure

```
Little Lemon/
├── Model/
│   ├── MenuItem.swift
│   ├── MenuCategory.swift
│   └── Ingredient.swift
├── Views/
│   ├── MenuItemsView.swift
│   ├── MenuItemDetails.swift
│   └── MenuItemsOptionView.swift
├── MenuViewModel/
│   └── MenuViewModel.swift
└── Assets.xcassets/
```

## Best Practices Implemented

- Clean Architecture principles
- SOLID principles
- Protocol-oriented programming
- Reactive programming with Combine
- Modern SwiftUI patterns
- Comprehensive unit testing

## Future Enhancements

- User authentication
- Order placement functionality
- Favorites system
- Search functionality
- Nutritional information
- Dietary preferences filtering



