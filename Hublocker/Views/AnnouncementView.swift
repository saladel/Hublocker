//
//  AnnouncementView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 23/04/2024.
//

import SwiftUI

struct AnnouncementView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                // MARK: Make X button align to the top left
                ZStack {
                    Image(.pic1)
                        .resizable()
                        .scaledToFit()
                    //.padding()
   
                    // X button
                    /*
                    NavigationLink {
                        LockerView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(alignment: .top) {
                            Image(systemName: "xmark")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.black)
                                .frame(maxHeight: 15, alignment: .topLeading)
                                .padding()
                                .background(
                                    Color.white.opacity(0.7),
                                    in: Circle()
                                )
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                     */
                    
                    
                     Button(action: {
                         dismiss()
                     }, label: {
                         HStack(alignment: .top) {
                             Image(systemName: "xmark")
                                 .resizable()
                                 .scaledToFit()
                                 .frame(maxHeight: 15, alignment: .topLeading)
                                 .padding()
                                 .background(
                                     Color.white.opacity(0.7),
                                     in: Circle()
                                 )
                             
                             Spacer()
                         }
                         .padding(.horizontal)
                     })
                     .foregroundStyle(.black)
                     
                }
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("Introduction 🎉")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                        
                        Text("""
            Welcome to HubLocker, your gateway to hassle-free parcel management. Our locker services redefine convenience, providing a seamless experience for sending, receiving, and picking up your packages.
            """)
                        .padding(.horizontal)
                        
                        Text("Key Benefits")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                        
                        BenefitsText(boldedText: "Secure and Convenient:", bodyText: "Our lockers prioritize the safety of your parcels.")
                        
                        BenefitsText(boldedText: "Accessibility:", bodyText: "Access your packages at any time to fit your schedule.")
                        
                        BenefitsText(boldedText: "24/7 Contactless Transactions:", bodyText: "Embrace contactless transactions for a safer experience.")
                        
                        BenefitsText(boldedText: "Vacation:", bodyText: "Schedule periods when you won't be available to pick up packages. Your parcels are securely stored until your return, ensuring stress-free parcel management during your absence.")
                        
                        BenefitsText(boldedText: "Family-Friendly Convenience:", bodyText: "Easily add household members to your Hublocker")
                    }
                }
            }
            .ignoresSafeArea()
        }
        //.opacity(isViewVisible ? 1 : 0)
    }
}

#Preview {
    AnnouncementView()
}


struct BenefitsText: View {
    let boldedText: String
    let bodyText: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "checkmark")
                .font(.title3)
                .fontWeight(.medium)
            
            VStack(alignment: .leading) {
                Text("\(Text("\(boldedText)").bold()) \(Text("\(bodyText)").font(.body))")
                    .font(.title3)
            }
            .multilineTextAlignment(.leading)
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}






/*
 
     Text("\(Text("Secure and Convenient:").bold()) \(Text("Our lockers prioritize the safety of your parcels.").font(.body))")
         .font(.title3)
         .multilineTextAlignment(.leading)
 
 Text("Secure and Convenient:")
     .font(.title3)
     .fontWeight(.medium)
 
 Text("Our lockers prioritize the safety of your parcels.")
     .multilineTextAlignment(.leading)
 
 Text("The market days are \(Text("Wednesday").bold()) and \(Text("Sunday").bold()).")
 */


