//
//  CustomModalView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 24/04/2024.
//

import SwiftUI

struct CustomModalView: View {
    let isPresented: Binding<Bool>
    var body: some View {
        ZStack {
            PopCard()
            if isPresented.wrappedValue {
                // Add custom modal background and animation here
                VStack {
                    PopCard()
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                .background(Color.black.opacity(0.5))
                .transition(.scale)
            }
        }
    }
}

#Preview {
    CustomModalView(isPresented: <#Binding<Bool>#>)
}
