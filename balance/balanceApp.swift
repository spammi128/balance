//
//  balanceApp.swift
//  balance
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct CustomColor{
    static let lightGreen = Color("lightGreen")
    static let ourOnlyBlue = Color("ourOnlyBlue")
    static let leafGreen = Color("leafGreen")
    static let forestGreen = Color("forestGreen")
    static let mediumGreen = Color("mediumGreen")
    
}

@main
struct balanceApp: App {
    let persistenceController = PersistenceController.shared
    
    


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
