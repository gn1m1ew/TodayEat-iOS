//
//  TodayEatApp.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import SwiftUI

@main
struct TodayEatApp: App {
    @State private var eats = DailyEat.sampleData
    @StateObject private var store = EatStore()
    @State private var isPresentingNewEatView = false
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
                TabView{
                    NavigationView{
                        EatView(eats: $store.eats) {
                            EatStore.save(eats: store.eats) { result in
                                if case .failure(let error) = result {
                                    fatalError(error.localizedDescription)
                                }
                            }
                        
                        }
//                        .onAppear {
//                            EatStore.load { result in
//                                switch result {
//                                case .failure(let error):
//                                    fatalError(error.localizedDescription)
//                                case .success(let eats):
//                                    store.eats = eats
//                                }
//                            }
//                        }
                    }
                    .task {
                        do {
                            EatStore.load { result in
                                switch result {
                                case .failure(let error):
                                    fatalError(error.localizedDescription)
                                case .success(let eats):
                                    store.eats = eats
                                }
                            }
                        } catch {
                            errorWrapper = ErrorWrapper(error: error, guidance: "load sample data and continue.")
                        }
                    }
                    .sheet(item: $errorWrapper, onDismiss: {
                        store.eats = DailyEat.sampleData
                    }) { wrapper in
                        ErrorView(errorWrapper: wrapper)
                    }
                    .tabItem() {
                        Image(systemName: "heart.rectangle.fill")
                        Text("Menu")
                    }
                    ViewB()
                        .tabItem() {
                            Image(systemName: "heart.rectangle.fill")
                            Text("Twister")
                        }
                    ViewA()
                        .tabItem() {
                            Image(systemName: "heart.rectangle.fill")
                            Text("Recipe")
                        }
                    ViewC()
                        .tabItem() {
                            Image(systemName: "heart.rectangle.fill")
                            Text("Setting")
                        }
                }
            }
        }
    }
