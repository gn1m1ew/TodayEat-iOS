//
//  Theme.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case oxblood
    case periwinkle
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case poppy
    case yellow
    case orange
    
    
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .poppy, .yellow, .periwinkle, .seafoam, .sky, .tan, .teal: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String{
        name
    }
}
