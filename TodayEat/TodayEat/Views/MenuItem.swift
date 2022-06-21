//
//  MenuItem.swift
//  TodayEat
//
//  Created by MingW on 6/2/22.
//

import SwiftUI

struct MenuItem: View {
    let option: MenuBarOptions
    var body: some View {
        VStack {
            Text(option.title)
                .font(.title.bold())
                .padding(.vertical)
            VStack {
                ForEach(option.foodItem){ food in
                    HStack ( spacing: 20){
                        VStack(alignment:
                                .leading, spacing: 10) {
                            Text(food.title)
                                .font(.title2)
                                .fontWeight(.bold)

                            Text(food.description)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(food.image)
                            .resizable()
                            .frame(width: 98, height: 68)
                            .cornerRadius(10)
                        .padding(.vertical)
                        Divider()
                    }
                }
            }
        }
    }
}

struct MenuItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuItem(option: .japanese)
    }
}
