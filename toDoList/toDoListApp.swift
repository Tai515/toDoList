//
//  toDoListApp.swift
//  toDoList
//
//  Created by Taina Saenz on 8/1/23.
//

import SwiftUI

@main
struct toDoListApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
