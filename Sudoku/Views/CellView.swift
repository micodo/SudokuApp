//
//  CellView.swift
//  Sudoku
//
//  Created by Michelle Warnatz on 14.06.25.
//
import SwiftUI

struct CellView: View {
    let row: Int
    let col: Int
    @Environment(Puzzle.self) var puzzle
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .aspectRatio(1.0, contentMode: .fit)
            .overlay() {
                if let cell = puzzle.getCell(row, col) {
                    switch cell.value {
                        case .empty(let candidates):
                            CellCandidatesView(candidates: candidates)
                        case .given(let value):
                            Text(value)
                                .font(.largeTitle)
                        case .solved(let value):
                            Text(value)
                                .font(.largeTitle)
                    }
                } else {
                    Text("?")
                        .font(.largeTitle)
                }
            }
            .border(Color.primary, width: 0.5)
    }
}

#Preview {
    let puzzle = "090008000 000000300 470000000 000042000 600000009 001003000 000700095 003000000 002000008";
    CellView(row: 1, col: 1)
        .environment(Puzzle(from: puzzle))
}
