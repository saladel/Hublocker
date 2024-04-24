//
//  PackageChartView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 22/04/2024.
//

import SwiftUI
import Charts

struct PackageChartView: View {
    let chartData: [PackageChart] = [
        .init(month: Date.from(month: 1), numberOfPackages: 5000, chartPackageStatus: .delivered),
        .init(month: Date.from(month: 1), numberOfPackages: 300, chartPackageStatus: .pending),
        .init(month: Date.from(month: 2), numberOfPackages: 3000, chartPackageStatus: .delivered),
        .init(month: Date.from(month: 2), numberOfPackages: 1000, chartPackageStatus: .pending),
        .init(month: Date.from(month: 3), numberOfPackages: 2500, chartPackageStatus: .delivered),
        .init(month: Date.from(month: 3), numberOfPackages: 100, chartPackageStatus: .pending),
    ]
    
    
    var body: some View {
        VStack {
            Chart {
                ForEach(chartData) { i in
                    BarMark(
                        x: .value("Month", i.month, unit: .month),
                        y: .value("Packages", i.numberOfPackages)
                    )
                    .foregroundStyle(by: .value("Month", i.numberOfPackages))
                }
            }
            .frame(height: 200)
        }
    }
}

#Preview {
    PackageChartView()
}
