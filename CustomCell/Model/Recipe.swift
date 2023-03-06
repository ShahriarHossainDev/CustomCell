//
//  Recipe.swift
//  All type of view
//
//  Created by Shishir_Mac on 6/3/23.
//

import Foundation

struct Recipe {
    let name: String
    let thumbnails: String
    let prepTime: String
    let price: Int
}

extension Recipe {
    static func createRecipes() -> [Recipe] {
        return [Recipe(name: "Egg Benedict", thumbnails: "egg_benedict.jpg", prepTime: "1 hour", price: 120),
                Recipe(name: "Mushroom Risotto", thumbnails: "mushroom_risotto.jpg", prepTime: "30 min", price: 112),
                Recipe(name: "Full Breakfast", thumbnails: "full_breakfast.jpg", prepTime: "25 min", price: 80),
                Recipe(name: "Hamburger", thumbnails: "hamburger.jpg", prepTime: "15 min", price: 90),
                Recipe(name: "Ham and Egg Sandwich", thumbnails: "ham_and_egg_sandwich.jpg", prepTime: "20 min", price: 450),
                Recipe(name: "Creme Brelee", thumbnails: "creme_brelee.jpg", prepTime: "10 min", price: 318),
                Recipe(name: "White Chocolate Donut", thumbnails: "white_chocolate_donut.jpg", prepTime: "1 hour", price: 288),
                Recipe(name: "Starbucks Coffee", thumbnails: "starbucks_coffee.jpg", prepTime: "2 hour", price: 876),
                Recipe(name: "Vegetable Curry", thumbnails: "vegetable_curry.jpg", prepTime: "50 min", price: 150),
                Recipe(name: "Instant Noodle with Egg", thumbnails: "instant_noodle_with_egg.jpg", prepTime: "65 min", price: 240),
                Recipe(name: "Noodle with BBQ Pork", thumbnails: "noodle_with_bbq_pork.jpg", prepTime: "40 min", price: 230),
                Recipe(name: "Japanese Noodle with Pork", thumbnails: "japanese_noodle_with_pork.jpg", prepTime: "30 min", price: 30),
                Recipe(name: "Green Tea", thumbnails: "green_tea.jpg", prepTime: "25 min", price: 660),
                Recipe(name: "Thai Shrimp Cake", thumbnails: "thai_shrimp_cake.jpg", prepTime: "1.5 hour", price: 290),
                Recipe(name: "Angry Birds Cake", thumbnails: "angry_birds_cake.jpg", prepTime: "2 hour", price: 270),
                Recipe(name: "Ham and Cheese Panini", thumbnails: "ham_and_cheese_panini.jpg", prepTime: "35 min", price: 730)]
    }
}
