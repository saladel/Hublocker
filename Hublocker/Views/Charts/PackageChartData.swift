//
//  PackageChartData.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 22/04/2024.
//

import Foundation
import SwiftUI

enum ChartPackageStatus: String, CaseIterable {
    case delivered = "Delivered"
    case pending = "Pending"

    var color: Color {
        switch self {
        case.delivered:
            return .g
        case.pending:
            return .red
        }
    }
}

struct PackageChart: Identifiable {
    let id = UUID()
    let month: Date
    let numberOfPackages: Int
    
    let chartPackageStatus: ChartPackageStatus
}

extension Date {
    static func from(month: Int) -> Date {
        let components = DateComponents (month: month)
        return Calendar.current.date(from: components)!
    }

}


/*
 static func from(year: Int, month: Int, day: Int) -> Date {
     let components = DateComponents (year: year, month: month, day: day)
     return Calendar.current.date(from: components)!
 }

 */
