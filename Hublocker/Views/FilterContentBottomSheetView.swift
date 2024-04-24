//
//  FilterContentView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 23/04/2024.
//

import SwiftUI

struct FilterContentBottomSheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                // Yearly
                TextSummaryBottomSheet(distinctText: "Year")
                
                YearlySummaryBottomSheetButton(firstYear: "2024", secondYear: "2023")
                
                // Quarterly
                TextSummaryBottomSheet(distinctText: "Quarterly")
                
                QuarterlySummaryBottomSheetButton(firstQuarter: "Q1", secondQuarter: "Q2", thirdQuarter: "Q3", fourthQuarter: "Q4")
                
                // Package Summary
                TextSummaryBottomSheet(distinctText: "Package Summary")
                
                PackageSummaryBottomSheet(deliveredText: "Delivered", pendingText: "Pending")
                
                // Save Button
                Button(action: {
                    print("tapped")
                    dismiss()
                }, label: {
                    HStack {
                        Text("Save")
                            .foregroundStyle(.white)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .background(Color.g, in: RoundedRectangle(cornerRadius: 8))
                    .padding(.top, 35)
                    .padding(.bottom, 15)
                })
                
                
            }
            .padding()
            .navigationTitle("Filter By")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                    })
                    
                }
            })
        }
    }
}

#Preview {
    FilterContentBottomSheetView()
}


struct YearlySummaryBottomSheetButton: View {
    let firstYear: String
    let secondYear: String
    
    
    var body: some View {
        HStack(spacing: 15) {
            // year 1
            Button(action: {
                
            }, label: {
                Text(firstYear)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
            
            // year 2
            Button(action: {
                
            }, label: {
                Text(secondYear)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
        }
    }
}

struct QuarterlySummaryBottomSheetButton: View {
    let firstQuarter: String
    let secondQuarter: String
    let thirdQuarter: String
    let fourthQuarter: String
    
    var body: some View {
        HStack(spacing: 15) {
            // 1st
            Button(action: {
                
            }, label: {
                Text(firstQuarter)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
            
            // 2nd
            Button(action: {
                
            }, label: {
                Text(secondQuarter)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
            
            // 3rd
            Button(action: {
                
            }, label: {
                Text(thirdQuarter)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
            
            
            // 4th
            Button(action: {
                
            }, label: {
                Text(fourthQuarter)
                //.padding(.horizontal, 20)
            })
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 15)
            .overlay(
                Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1)
            )
            
            
            
        }
    }
}

struct PackageSummaryBottomSheet: View {
    let deliveredText: String
    let pendingText: String
    
    var body: some View {
        HStack(spacing: 13) {
            Button(action: {
                
            }, label: {
                Text("\(deliveredText) Package")
                //.padding(.horizontal, 20)
            })
            //.frame(minWidth: 0, maxWidth: .infinity)
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 5)
            .overlay(Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1))
            
            Button(action: {
                
            }, label: {
                Text("\(pendingText) Package")
                //.padding(.horizontal, 20)
            })
            //.frame(minWidth: 0, maxWidth: .infinity)
            .foregroundStyle(.black)
            .padding(12)
            .padding(.horizontal, 5)
            .overlay(Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1))
        }
    }
}

struct TextSummaryBottomSheet: View {
    let distinctText:String
    
    var body: some View {
        Text(distinctText)
            .font(.title3)
            .padding(.top, 20)
            .padding(.bottom, 10)
    }
}


/*
 Button(action: {
     
 }, label: {
     Text("Pending Package")
 })
 .foregroundStyle(.black)
 .padding(12)
 .padding(.horizontal, 5)
 .overlay(Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1))
 */
