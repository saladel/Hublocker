//
//  BarChartView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 24/04/2024.
//

import SwiftUI
import Charts
// ChartData (month: "March", views: 6000, service: "TikTok"),
// ChartData(month: "Jan", numberOfPackages: 1900, packageStatus: "Delivered"),
struct BarChartView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Chart(ChartData.exampleData) {
                BarMark(x: .value("Month", $0.month), y: .value("Packages", $0.numberOfPackages),
                        stacking: .standard
                )
                .foregroundStyle(by: .value("Package Status", $0.packageStatus))
            }
            //.padding()
            .frame(maxHeight: 500)
            //.background(.white)
            .chartForegroundStyleScale(
                ["Delivered": .g, "Pending": .r]
            )
        }
    }
}

#Preview {
    BarChartView()
}


/*
 VStack(alignment: .leading, spacing: 20) {
     Chart(ChartData.exampleData) {
         BarMark(x: .value("Month", $0.month), y: .value("Packages", $0.numberOfPackages),
                 stacking: .standard
         )
         .foregroundStyle(by: .value("Package Status", $0.packageStatus))
     }
     .padding()
     .frame(maxHeight: 500)
     .background(.white)
     .clipShape(RoundedRectangle(cornerRadius: 10))
 }
 */

/*
List {
    // Delivered Packages
    Section {
        NavigationLink(destination: {
            Text("Delivered Packages: 5")
        }, label: {
            PackagesStatusList(packageStatus: "Delivered", number: "5", statusColor: .g, statusBackgroundColor: .green)
        })
    }
    
    // Pending Packages
        NavigationLink(destination: {
            Text("Pending Packages: 6")
        }, label: {
            PackagesStatusList(packageStatus: "Pending", number: "6", statusColor: .r, statusBackgroundColor: .red)
    })
    
    
}
//.listStyle(InsetGroupedListStyle())
.listStyle(.insetGrouped)
 */
