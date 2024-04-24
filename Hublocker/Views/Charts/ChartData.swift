//
//  ChartData.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 24/04/2024.
//

import Foundation

struct ChartData: Identifiable {
    let id = UUID()
    let month: String
    let numberOfPackages: Int
    let packageStatus: String
    
    static var exampleData: [ChartData] = [
    ChartData(month: "Jan", numberOfPackages: 1900, packageStatus: "Delivered"),
    ChartData(month: "Jan", numberOfPackages: 450, packageStatus: "Pending"),
    ChartData(month: "Feb", numberOfPackages: 900, packageStatus: "Delivered"),
    ChartData(month: "Feb", numberOfPackages: 250, packageStatus: "Pending"),
    ChartData(month: "Mar", numberOfPackages: 500, packageStatus: "Delivered"),
    ChartData(month: "Mar", numberOfPackages: 100, packageStatus: "Pending"),
    ]
    
    // 
    
    
    
}
