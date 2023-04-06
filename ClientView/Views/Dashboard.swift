//
//  Dashboard.swift
//  ClientView
//
//  Created by David Amedeka on 3/24/23.
//

import SwiftUI
import Charts

struct Dashboard: View {

    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea()
            VStack (spacing: 50) {
                Spacer()
                Text("Revenue")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Chart(data) {
                    RuleMark(y: .value("Goal", 230))
                        .foregroundStyle(Color.white)
                        .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                        .annotation(alignment: .leading) {
                            Text("Goal")
                                .foregroundColor(.white)
                                .font(.caption)
                        }
                    BarMark(
                        x: .value("Month", $0.date),
                        y: .value("Revenue", $0.revenue)
                    )
                    .foregroundStyle(Color.purple.gradient)
                }
                .frame(width: 300, height: 250)
                .padding()
                .chartXAxis {
                    AxisMarks(values: data.map { $0.date}) {date in
                        AxisValueLabel(format: .dateTime.month(.narrow), centered: true)
                    }
                }
                Spacer()
                Spacer()
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
