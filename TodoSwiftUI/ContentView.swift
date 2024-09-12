//
//  ContentView.swift
//  TodoSwiftUI
//
//  Created by Justin Maronde on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @State private var title: String = ""
    
    private var isFormValid: Bool {
        !title.isEmptyOrWhitespace
    }
    
    private func saveTodoItem() {
        let todoItem = TodoItem(context: viewContext)
        todoItem.title = title
        
        do {
            try viewContext.save()
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        VStack {
            TextField("Title", text: $title)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    if isFormValid {
                        saveTodoItem()
                        title = ""
                    }
                }
            Spacer()
        }
        .padding()
        .navigationTitle("Todo")
    }
}

#Preview {
    NavigationStack {
        ContentView()
            .environment(\.managedObjectContext, CoreDataProvider.preview.viewContext)
    }
}
