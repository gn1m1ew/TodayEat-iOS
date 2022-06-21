//
//  ViewB.swift
//  TodayEat
//
//  Created by MingW on 5/6/22.
//

import SwiftUI

struct ViewB: View {
    @StateObject private var mealGenerator = MealGenerator()
    
    var actionButton: some View {
        Button("Press for Select") {
            mealGenerator.fetchRandomMeal()
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.red)
        .cornerRadius(16)
        .onAppear {
            mealGenerator.fetchRandomMeal()
        }
    }
    var body: some View {
        VStack {
            actionButton
            if let name = mealGenerator.currentMeal?.name {
                Text(name)
                    .font(.largeTitle)
            }
            AsyncImageView(urlString: $mealGenerator.currentImageURLString)
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
