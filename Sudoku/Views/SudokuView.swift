//
//  SudokuView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//

import SwiftUI

struct SudokuView: View {
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<3) { r in
                HStack(spacing: 0) {
                    ForEach(0..<3) { c in
                        BoxView(box: 3 * r + c + 1)
                    }
                }
            }
        }
        .aspectRatio(1.0, contentMode: .fit)
        .border(Color.primary, width: 2 )
        .padding()
    }
}

#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    SudokuView()
        .environment(Puzzle(from: puzzle))
}
