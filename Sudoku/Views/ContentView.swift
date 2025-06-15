//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct ContentView: View {
    @State var puzzle = Puzzle()
    var body: some View {
        SudokuView()
        .padding()
        .environment(puzzle)
    }
}

#Preview {
    ContentView()
}
