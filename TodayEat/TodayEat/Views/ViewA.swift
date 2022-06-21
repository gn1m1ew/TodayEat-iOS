//
//  ViewA.swift
//  TodayEat
//
//  Created by MingW on 5/6/22.


import SwiftUI
import MapKit

struct ViewA: View {
    @State var currentOption: MenuBarOptions = .american
    
    @Namespace var animation
    var body: some View {
        VStack{
//            appBar
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 26){
                    ForEach(MenuBarOptions.allCases, id:\.self){ item in
                        VStack{
                            Text(item.title)
                                .foregroundColor(currentOption == item ? .black : .gray)
                            if currentOption == item {
                                Capsule()
                                    .fill(.black)
                                    .matchedGeometryEffect(id: "item", in: animation)
                                    .frame( height: 2)
                                    .padding(.horizontal, -5)
                            }else{
                                Capsule()
                                    .fill(.clear)

                                    .frame( height: 2)
                                    .padding(.horizontal, -5)
                            }
                        }
                        .onTapGesture {
                            withAnimation(.easeInOut){
                                self.currentOption = item
                        }
                    }
                }
            }
            .overlay(
                Divider().padding(.horizontal, -25), alignment: .bottom)
            .padding(.horizontal)
            }
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(MenuBarOptions.allCases, id:\.self){ option in
                            MenuItem(option: option)
                                .padding([.horizontal])
                        }
                    }
                .onChange(of: currentOption) { _ in
                    withAnimation(.easeInOut) {
                        proxy.scrollTo(currentOption, anchor: .topTrailing)
                    }
                }
            }
            Spacer()
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}

enum MenuBarOptions: Int, CaseIterable {
    case japanese
    case american
    case italian
    case chinese
    case fastfood
    case korean

    var title: String {
        switch self {
        case.chinese:
            return "中餐"
        case.japanese:
            return "日料"
        case.american:
            return "美式"
        case.italian:
            return "意料"
        case.fastfood:
            return "快餐"
        case .korean:
            return "韩餐"

        }
    }
    var foodItem: [FoodItem] {
        switch self {
        case .japanese:
            return japaneseFood
        case .american:
            return americanFood
        case .italian:
            return italianFood
        case .chinese:
            return chineseFood
        case .fastfood:
            return fastFood
        case .korean:
            return koreanFood
            
        }
    }

}
