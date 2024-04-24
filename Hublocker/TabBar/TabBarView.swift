//
//  TabBarView.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 22/04/2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var isPopCardVisible = false
    private let lastPopUpKey = "lastPopUpDate"
    
    // Function responsible for —— Lastly, implement this pop-up to show up for users every two week as shown on the UX.
    func shouldDisplayPopUp() -> Bool {
        let currentDate = Date()
        let twoWeeksLater = Calendar.current.date(byAdding: .day, value: 14, to: currentDate)!
        
        if let lastPopUpDate = UserDefaults.standard.object(forKey: lastPopUpKey) as? Date {
            return lastPopUpDate < twoWeeksLater
        } else {
            return true // If there is no stored date, display the popup
        }
    }

    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            LockerView()
                .tabItem{
                    Label("Locker", systemImage: "book.closed")
                    
                    // responsible for 2 weeks show
                    /*
                     .onAppear {
                         if shouldDisplayPopUp() {
                             isPopCardVisible = true
                             UserDefaults.standard.set(Date(), forKey: lastPopUpKey)
                         }
                     }
                     */
                    
                    // popover
                    /*
                     .popover(isPresented: $isPopCardVisible, content: {
                         PopCard()
                     })
                     .onAppear(perform: {
                         isPopCardVisible = true
                     })
                     */
                }
                .popover(isPresented: $isPopCardVisible, content: {
                    PopCard()
                        .presentationDetents([.fraction(0.65), .large])
                        
                })
                .onAppear(perform: {
                    //isPopCardVisible = true
                    if shouldDisplayPopUp() {
                        isPopCardVisible = true
                        UserDefaults.standard.set(Date(), forKey: lastPopUpKey)
                    }
                })
                
                
                
            
            RentView()
                .tabItem{
                    Label("Rent", systemImage: "lock")
                    //Label("Payment", systemImage: "arrow.up.arrow.down.circle.fill")
                    //arrow.up.arrow.down.circle.fill
                }
            
            AdvertView()
                .tabItem{
                    Label("Advert", systemImage: "newspaper")
                }
            
            AccountView()
                .tabItem{
                    Label("Account", systemImage: "person")
                }
        }
        .tint(Color.g)
        
    }
}

#Preview {
    TabBarView()
}










/*
 .alert("Your Gate", isPresented: $isPopCardVisible) {
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
                 .onTapGesture {
                     // Dismisses the PopCard view before going to announcement view
                     dismiss()
                 }
         }
     }
     .frame(maxWidth: .infinity, maxHeight: 350)
     .padding()
     .background(RoundedRectangle(cornerRadius: 15)
         .foregroundStyle(.white)
         //.opacity(1)
         //.brightness(-0.4)
         
     )
 }
 */
