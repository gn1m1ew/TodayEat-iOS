//
//  EatView.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import SwiftUI

struct EatView: View {
    @Binding var eats: [DailyEat]
    @Environment(\.scenePhase) private var scenePhase
    @State private var isPresentingNewEatView = false
    @State private var newEatData = DailyEat.Data()
    let saveAction: ()->Void
    
    var body: some View {
        List{
            ForEach($eats) { $eat in
                NavigationLink(destination: DetailView(eat: $eat)) {
                    CardView(eat: eat)
                }
            }
        }
        .navigationTitle("Daily Eat")
        .toolbar {
            Button(action: {
                isPresentingNewEatView = true
            }) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Eat")
        }
        .sheet(isPresented: $isPresentingNewEatView) {
            NavigationView {
                DetailEditView(data: $newEatData)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Dismiss") {
                                isPresentingNewEatView = false
                                newEatData = DailyEat.Data()
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Add") {
                                
                                let newEat = DailyEat(data: newEatData)
                                eats.append(newEat)
                                isPresentingNewEatView = false
                                newEatData = DailyEat.Data()
                            }
                        }
                    }
            }
        }
        .onChange(of: scenePhase) {phase in
            if phase == .inactive { saveAction() }
        }
    }
}

struct EatView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EatView(eats: .constant(DailyEat.sampleData), saveAction: {})
        }
    }
}
