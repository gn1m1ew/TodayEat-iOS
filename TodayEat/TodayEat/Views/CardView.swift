//
//  CardView.swift
//  TodayEat
//
//  Created by MingW on 4/1/22.
//

import SwiftUI

struct CardView: View {
    let eat: DailyEat
    
    var body: some View {
        VStack(alignment: .leading){
            Text(eat.title)
                .accessibilityAddTraits(.isHeader)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(eat.attendees.count)", systemImage: "list.bullet.indent")
                    .accessibilityLabel("\(eat.attendees.count) attendees")
                Spacer()
            }
            .font(.caption)
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var eat = DailyEat.sampleData[0]
    static var previews: some View {
        CardView(eat: eat)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
