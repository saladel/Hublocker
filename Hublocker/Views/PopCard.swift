//
//  PopCard.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 23/04/2024.
//

import SwiftUI

struct PopCard: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 15){
                HStack(alignment: .center) {
                    Text("Your Gateway to Convenience!")
                        .font(.title2)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                            .font(.title2)
                            .fontWeight(.medium)
                    })
                }
                .padding(.top, 10)
                
                Image(.pic)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                //.frame(maxWidth: .infinity)
                
                Text("Explore the world of locker services with HubLocker")
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
                NavigationLink {
                    AnnouncementView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Learn how locker services work")
                        .foregroundStyle(.black)
                        .font(.title3)
                        .fontWeight(.regular)
                        .opacity(0.6)
                        .padding(.bottom, 10)
                        .underline(pattern: .dot , color: .g.opacity(0.5))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 350)
            .padding()
            .background(RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.white)
            )
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    PopCard()
}




/*
 .overlay(
 RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 5)
 )
 */

/*
 Image(.pic)
 .resizable()
 .scaledToFit()
 .background(RoundedRectangle(cornerRadius: 15)
 .foregroundStyle(.red)
 .opacity(0.4)
 //                    .brightness(-0.4)
 )
 */

/*
 .background(RoundedRectangle(cornerRadius: 12)
 //                    .foregroundStyle(.tint)
 //                    .opacity(0.5)
 //                    .brightness(-0.4)
 
 )
 */

/*
 .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 5))
 */
