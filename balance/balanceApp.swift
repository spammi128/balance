//
//  balanceApp.swift
//  balance
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

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
