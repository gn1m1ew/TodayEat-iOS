//
//  History.swift
//  TodayEat
//
//  Created by MingW on 4/15/22.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    var attendees: [DailyEat.Attendee]
    
    init(id: UUID = UUID(), attendees: [DailyEat.Attendee]) {
        self.id = id
        self.attendees = attendees
    }
}
