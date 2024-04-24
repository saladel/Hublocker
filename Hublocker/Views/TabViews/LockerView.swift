//
//  GraphRepresentation.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 22/04/2024.
//

import SwiftUI
import Charts

struct LockerView: View {
    @State private var isShowingBottomSheet = false
    @State private var isPopCardVisible = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                ZStack {
                    Image(.pic)
                        .resizable()
                        .scaledToFill()
                    
                    VStack {
                        Spacer()
                        
                        ZStack{
                            // Rounded rectangle at the bottom
                            RoundedRectangle(cornerRadius: 1)
                                .foregroundColor(Color.black.opacity(0.2))
                                .frame(height: 50)
                            
                            // Text in the middle
                            Text("Town Place Apartments")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        //.frame(maxWidth: 320)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                // Package Summary
                VStack(alignment: .leading, spacing: 10) {
                    Text("Package Summary")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.top, 20)
                        .padding(.bottom, 5)
                    
                    Text("Q1-Q3")
                        .font(.title3)
                        .fontWeight(.medium)
                        .opacity(0.4)
                        .padding(.bottom, 8)
                    
                    HStack(spacing: 12) {
                        PackageStatus(packageStatus: "Delivered", circleColor: .g)
                        
                        PackageStatus(packageStatus: "Pending", circleColor: .r)
                    }
                }
                .padding(.bottom)
                
                // Charts View
                BarChartView()
                
                // Package list view
                List {
                    // Delivered Packages
                    Section {
                        NavigationLink(destination: Text("Delivered Packages: 5")) {
                            PackagesStatusList(packageStatus: "Delivered", number: "5", statusColor: .green, statusBackgroundColor: .green)
                        }
                    }
                    
                    // Pending Packages
                    Section {
                        NavigationLink(destination: Text("Pending Packages: 6")) {
                            PackagesStatusList(packageStatus: "Pending", number: "6", statusColor: .red, statusBackgroundColor: .red)
                        }
                    }
                }
                .listStyle(.insetGrouped)
            }
            .padding()
            .navigationTitle("Locker Service")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingBottomSheet.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundStyle(.g)
                    })
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .sheet(isPresented: $isShowingBottomSheet, content: {
                        FilterContentBottomSheetView()
                            .presentationDetents([.fraction(0.65)])
                        //.presentationDragIndicator(.visible)
                    })
                }
            }
        }
    }
}

#Preview {
    LockerView()
}


struct PackagesStatusList: View {
    let packageStatus: String
    let number: String
    let statusColor: Color
    let statusBackgroundColor: Color
    
    var body: some View {
        HStack{
            Image(systemName: "cube.fill")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 25)
                .foregroundStyle(statusColor)
                .padding()
                .background(
                    statusBackgroundColor.opacity(0.2),
                    in: Circle()
                )
                .padding(.trailing)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("\(packageStatus) Package")
                Text(number)
            }
            
//            Spacer()
//            Image(systemName: "chevron.right")
        }
    }
}



struct PackageStatus: View {
    let packageStatus: String
    let circleColor: Color
    
    var body: some View {
        
        HStack(spacing: 6) {
            Circle()
                .frame(maxHeight: 8)
                .foregroundStyle(circleColor)
            
            Text("\(packageStatus) Packages")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                
        }
         .foregroundStyle(.black)
         .padding(8)
         .padding(.horizontal, 3)
         .background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 25.0))
         //.overlay(Color.gray.opacity(0.5), in: RoundedRectangle(cornerRadius: 23).stroke(lineWidth: 1))
         
        //.padding(10)
        //.background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 25.0))
         
        /*
        HStack(spacing: 13) {
            Button(action: {
                
            }, label: {
                Text("\(packageStatus) Package")
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
         */
    }
}


/*
 // Rounded rectangle at the bottom
 RoundedRectangle(cornerRadius: 1)
     .foregroundColor(Color.black.opacity(0.5)) // Adjust the opacity as needed
     .frame(height: 50)
 //.alignmentGuide(.top) { d in d[.top] }
 
 // Text in the middle
 Text("Town Place Apartments")
     .font(.title3)
     .fontWeight(.semibold)
     .foregroundColor(.white)
 */



/*
 
 RoundedRectangle(cornerRadius: 0)
     .foregroundStyle(.black)
     .opacity(0.3)
     .padding(.top)
     .frame(maxWidth: .infinity, maxHeight: 50)
     .frame(alignment: .bottom)
 
 Text("Town Place Apartments")
     .font(.title3)
     .fontWeight(.semibold)
     .foregroundStyle(.white)
 
 
 .padding()
 .navigationTitle("New Thread")
 .navigationBarTitleDisplayMode(.inline)
 .toolbar(content: {
 // cancel
 ToolbarItem(placement: .topBarLeading) {
 Button("Cancel") {
 dismiss()
 }
 .font(.subheadline)
 .foregroundStyle(.black)
 }
 // New Thread
 ToolbarItem(placement: .topBarTrailing) {
 Button("Post") {
 //
 }
 .opacity(threadPost.isEmpty ? 0.5 : 1)
 .disabled(threadPost.isEmpty)
 .font(.subheadline)
 .fontWeight(.semibold)
 .foregroundStyle(.black)
 }
 })
 */


