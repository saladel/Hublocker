//
//  AcceptanceCriteria.swift
//  Hublocker
//
//  Created by Adewale Sanusi on 22/04/2024.
//

import SwiftUI

struct AcceptanceCriteria: View {
    var body: some View {
        ScrollView(.vertical) {
            Text("""
                 User story/requirements: 101
                 
    As a resident living in Town Place Apartment Lekki Lagos, i would like to see the aggregate report of my delivered and pending packages on the locker screen also I would like to perform other functions on the screen.
                  
    Please note: This locker service dashboard  is accessible when a user click on the locker tab. ✔️
                  
    Acceptance Criteria:
                  
    1. Graph Representation – see attached screenshot named“1_Graph Representation_Locker Service” 1️⃣
    
    Ensure the users have their data-package (delivered packages and pending packages) represented in a bar chart on the graph as shown on the UX. ✔️
                 
    Ensure a color icon is given to differentiate the package type, i.e., green for delivered packages and red for pending packages as shown on the UX. ✔️
                 
    2. Button (Delivered Packages & Pending Packages) see attached named “1_Graph Representation_Locker Service” 2️⃣ (2/2)
                 
    Ensure the given buttons (delivered packages and pending packages) lead to their respective screens as shown on the UX. ✔️
                 
    Also, ensure each button indicates a figure to tell packages awaiting delivery and those that have been delivered as shown on the UX. ✔️
                 
    3. Pop-Up See attached 3️⃣ (3/5)
                 
    Ensure users get a pop-up when they land on the locker dashboard as shown on the UX. ❌
                 
    This pop-up should have a cat (call-to-action) leading to the product announcement screen as shown on the UX. ✔️
                 
    Also, this pop-up should have a cancel (x) for users to close the pop-up as shown on the UX. ✔️
                 
    Lastly, implement this pop-up to show up for users every two week as shown on the UX.. ❌
                 
    User should see the images on the screen as implemented on the UX. ✔️
                 
    4. Product Announcement Screen – see attached 4️⃣ (3/3)
                 
    Ensure users see the key benefits of HubLocker when they land on the product announcement screen as shown on the UX. ✔️
                 
    Also, the product announcement screen should have a cancel (x) button for users to close the screen as shown on the UX. ✔️
                 
    Users should return to the locker service dashboard when they tap or click or interact with the cancel (x) button on the product announcement screen as shown on the UX. ✔️
                 
    5. Filtering capability  - see attached 5️⃣ (3/3)
                 
    User should have the ability to filter our reports based on selected period Q1/Q2/Q3 year 2024/2023 / (Delivered Packages & Pending Packages) as shown on the UX. ✔️
                
    6. Display filter results based on filter selection  see attached 5 ✔️
                 
    User should see results of filter results after clicking on save button on the filter selection screen as shown on the UX. ✔️
    """)
            .multilineTextAlignment(.leading)
            .padding()
        }
    }
}

#Preview {
    AcceptanceCriteria()
}
