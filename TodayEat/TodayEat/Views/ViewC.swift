//
//  ViewC.swift
//  TodayEat
//
//  Created by MingW on 5/6/22.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Display"),
                        footer: Text("System settings will override Dark mode and use the current device theme")) {
                    
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Dark Mode")
                    })
                    Toggle(isOn: .constant(true),
                           label: {
                        Text("Use system settings")
                    })
                }
//                Section {
//                    Label("balabala", systemImage: "link")
//                }
            }
            .navigationTitle("Setting")
        }

    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
