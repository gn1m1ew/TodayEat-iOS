//
//  DailyEat.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import Foundation

struct DailyEat: Identifiable, Codable{
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var history: [History] = []

    
    init(id: UUID = UUID(), title: String, attendees: [String]) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0) }
    }
}

extension DailyEat {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String){
            self.id = id
            self.name = name
        }
    }
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
    }
    var data: Data {
        Data(title: title, attendees: attendees)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        attendees = data.attendees
    }
    
    init(data: Data) {
        id = UUID()
        title = data.title
        attendees = data.attendees
    }
}


extension DailyEat {
    static let sampleData: [DailyEat] =
    [
        DailyEat(title: "Monday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Tuesday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Wednesday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Thursday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Friday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Saturday", attendees: ["Rice", "Hash Brown", "Burger"]),
        DailyEat(title: "Sunday", attendees: ["Rice", "Hash Brown", "Burger"])
    ]
}
