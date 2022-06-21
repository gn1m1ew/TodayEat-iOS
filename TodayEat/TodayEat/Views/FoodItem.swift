//
//  FoodItem.swift
//  TodayEat
//
//  Created by MingW on 6/1/22.
//

import SwiftUI

struct FoodItem: Identifiable {
    var id = UUID.init().uuidString
    var title,description,image: String
}

var japaneseFood : [FoodItem] = [
        .init(title: "Sushi", description:
                "Ingredients: 1. salmon 2. Seaweed 3. rice 4. Soy sauce 5. Sesame 6. egg", image: ""),
    
        .init(title: "Ramen", description:
                "Ingredients:1. Udon Noodles 2. pork 3. corn 4. mushroom 5. boiled egg", image: ""),
        
        .init(title: "Curry", description:
                "Ingredients:1. White rice 2. curry powder 3. carrot 4. potato 5. deep fried chicken/pork", image: ""),
        
        .init(title: "Miso", description:
                "Ingredients:1. Water 2. miso 3. soy sauce 4. tofu", image: "")
]

var americanFood : [FoodItem] = [
        .init(title: "Beef Burger", description:
                "Ingredients: 1. burger bread, 2. beef partie, 3. sliced tomatos, 4. sliced onion 5. ketchup sauce", image: ""),
        
        .init(title: "Chicken Sandwich", description:
                "Ingredients: 1. sandwich bread, 2. fried chicken, 4. lettuce 5. mayo", image: ""),
        
        .init(title: "Steak", description:
                "Ingredients: 1. ribeye beef, 2. black pepper 3. salt, 4. broccoli", image: ""),
    
        .init(title: "Salad", description:
                "Ingredients: 1. vegetables you want 2. salad sauce 3. chicken/beef 4. boiled egg", image: "")
]

var italianFood : [FoodItem] = [
        .init(title: "Pasta", description:
                "Ingredients: 1. pasta 2. alfredo sauce, 3. chicken", image: ""),
        
        .init(title: "Shrimp and Scallop Risotto", description:
                "Ingredients: 1. fish stock, 2. butter 3. rice 4. olive oil 5. chopped shallot 6. white wine", image: ""),
        
        .init(title: "Traditional Spaghetti", description:
                "Ingredients: 1. spaghetti 2. chopped onion, 3. water 4. bacon 5. white sugar 6. parmesan cheese 7. red pepper flake, 8. black pepper and salt", image: "")
]

var koreanFood : [FoodItem] = [
        .init(title: "Kimchi fried rice", description:
                "Ingredients: 1. Kimchi 2. rice 3. bacon 4. tofu 5. fried egg", image: ""),
        
        .init(title: "Korean Chicken Wings", description:
                "Ingredients: 1. chicken wings, 2. sesame oil 3. soy sauce 4. sugar 5. honey 6. minced garlic 7. small onion 8. red pepper flake", image: ""),
        
        .init(title: "Bulgogi rice", description:
                "Ingredients: 1. rice 2. Bulgogi beef 3. sesame oil 4. fried egg 5. fried chopped potato", image: ""),
    
        .init(title: "Pa Jun", description:
                "Ingredients: 1. Flour 2. egg 3. water 4. scallion 5. vegetable oil 6. soy sauce", image: "")
]

var chineseFood : [FoodItem] = [
        .init(title: "Green Bean Noodles", description:
                "Ingredients: 1. Noodles 2. green beans 3. pork belly 4. scallion 5. soy sauce 6. sesame oil 7. vegetable oil 8. water", image: ""),
        
        .init(title: "Cold noodles", description:
                "Ingredients: 1. NE cold noodles 2. egg 3. bacon 4. bean sauce 5. chili sauce 6. sausage 7. vegetable oil 8. scallion", image: ""),
        
        .init(title: "Brewed pork rice", description:
                "Ingredients: 1. rice 2. chopped pork belly 3. soy sauce 4. vegetable oil 5. sliced onion 6. cinnamon 7. scallion", image: ""),
    
        .init(title: "Beef ban", description:
                "Ingredients: 1. Flour 2. beef 3. corn 4. raw egg 5. sou sauce 6. scallion 7. flavors 8. ginger", image: ""),
        .init(title: "Sweet and Sour chicken", description:
                "Ingredients: 1. Chicken 2. sugar 3. vinegar 4. water 5. soy sauce 6. scallion 7. ginger", image: "")
]

var fastFood : [FoodItem] = [
        .init(title: "MCD", description:
                "Ingredients: 1. Big mac 2. QPC meal 3. McChicken meal(spicy) 4. Happy meal", image: ""),
        .init(title: "Subway", description:
                "Ingredients: 1. beef sandwich 2. meatball sandiwch 3. sweet chicken sandwich 4. egg sandwich", image: ""),
        .init(title: "KFC", description:
                "Ingredients: 1. chicken sandwich 2. chicken tenders 3. A la carte 4. Chicken wings 5. Chicken Drumb", image: "")
]

struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab : String
    var foods: [FoodItem]
}
