//
//  ContentView.swift
//  FitnessApp
//
//  Created by Nitin Jha on 08/01/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        Text("Hii")
    }

 
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
