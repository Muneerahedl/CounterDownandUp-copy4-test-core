//
//  CounterDownandUpApp.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 08/01/2023.
//

import SwiftUI

@main
struct CounterDownandUpApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            testview()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
