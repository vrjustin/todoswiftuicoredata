//
//  TodoSwiftUIApp.swift
//  TodoSwiftUI
//
//  Created by Justin Maronde on 9/12/24.
//

import SwiftUI
import CoreData

@main
struct TodoSwiftUIApp: App {
    
    let provider = CoreDataProvider()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .environment(\.managedObjectContext, provider.viewContext)
            }
        }
    }
}
