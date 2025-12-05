//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Ali Soner Inceoglu on 04.12.25.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
