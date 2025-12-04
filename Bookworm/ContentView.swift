//
//  ContentView.swift
//  Bookworm
//
//  Created by Ali Soner Inceoglu on 04.12.25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(students) { student in
                    Text(student.name)
                }
            }
            .navigationTitle("Bookworm")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Dieter", "Helmut", "Franz", "Gertrud"]
                    let lastNames = ["Müller", "Schmidt", "Joseph"]
                    
                    let firstName = firstNames.randomElement()!
                    let lastName = lastNames.randomElement()!
                    let name = "\(firstName) \(lastName)"
                    
                    let student = Student(id: UUID(), name: name)
                    
                    modelContext.insert(student)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Student.self, inMemory: true)
}
