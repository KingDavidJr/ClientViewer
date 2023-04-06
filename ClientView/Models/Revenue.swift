//
//  Revenue.swift
//  ClientView
//
//  Created by David Amedeka on 3/24/23.
//

import Foundation

struct RevenueData: Identifiable {
    
    var date: Date
    var revenue: Double
    var id = UUID()
    
    init(year: Int, month: Int, revenue: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.date = calendar.date(from: DateComponents(year: year, month: month))!
        self.revenue = revenue
    }
}

    var data: [RevenueData] = [
        RevenueData(year: 2023, month: 1, revenue: 100.31),
        RevenueData(year: 2023, month: 2, revenue: 123.31),
        RevenueData(year: 2023, month: 3, revenue: 95.21),
        RevenueData(year: 2023, month: 4, revenue: 155.21),
        RevenueData(year: 2023, month: 5, revenue: 205.21),
        RevenueData(year: 2023, month: 6, revenue: 225.21),
        RevenueData(year: 2023, month: 7, revenue: 195.21),
        RevenueData(year: 2023, month: 8, revenue: 265.21),
        RevenueData(year: 2023, month: 9, revenue: 305.21),
        RevenueData(year: 2023, month: 10, revenue: 345.21),
        RevenueData(year: 2023, month: 11, revenue: 405.21),
        RevenueData(year: 2023, month: 12, revenue: 420.21),
    ]
