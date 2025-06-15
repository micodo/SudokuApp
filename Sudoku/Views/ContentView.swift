//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SudokuView()
        .padding()
    }
}

#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    ContentView()
        .environment(Puzzle(from: puzzle))
}
