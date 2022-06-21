//
//  ContentView.swift
//  TodayEat
//
//  Created by MingW on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ViewA()
                .tabItem() {
                    Image(systemName: "heart.rectangle.fill")
                    Text("Page")
                }
            ViewB()
                .tabItem() {
                    Image(systemName: "heart.rectangle.fill")
                    Text("Page")
                }
            ViewC()
                .tabItem() {
                    Image(systemName: "heart.rectangle.fill")
                    Text("Page")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
