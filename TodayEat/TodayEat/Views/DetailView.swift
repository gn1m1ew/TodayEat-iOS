//
//  DetailView.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import SwiftUI

struct DetailView: View {
    @Binding var eat: DailyEat
    
    @State private var data = DailyEat.Data()
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Meal List")) {
                ForEach(eat.attendees) { attendee in
                    Label(attendee.name,
                          systemImage: "checkmark")
                }
            }
        }
        .navigationTitle(eat.title)
        .toolbar {
            Button("Edit") {
                isPresentingEditView = true
                data = eat.data
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView{
                DetailEditView(data: $data)
                    .navigationTitle(eat.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingEditView = false
                                eat.update(from: data)
                            }
                        }
                    }
            }
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(eat: .constant(DailyEat.sampleData[0]))
        }
    }
}
